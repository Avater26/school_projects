function featureChecker() {
    const form = document.querySelector('form');
    return (('draggable' in form) || ('ondrop' in form && 'ondragstart' in form)) && 'FileReader' in window && 'FormData' in window;
}

const form = document.querySelector('.fileUpload');


if (featureChecker()) {
    console.log('*tongue click noise* nice');
    form.classList.add('advancedForm');
    ['dragenter', 'dragover', 'dragleave', 'drop'].forEach(eventName => {
        form.addEventListener(eventName, preventDefault, false);
    });

    function preventDefault(e) {
        e.preventDefault();
        e.stopPropagation();
    }

    form.addEventListener('drop', handleDrop, false);

    function handleDrop(e) {
        let dt = e.dataTransfer;
        let files = dt.files;

        let reader = new FileReader();

        reader.onload = function (e) {
            const img = document.querySelector('.previewImg');
            // const divSelect = document.querySelector('.previewCon');
            // if (divSelect.childElementCount > 1) {
            //     divSelect.removeChild('div');
            // }
            img.setAttribute('src', e.target.result);
            console.log(`Width = ${img.naturalWidth}, Height = ${img.naturalHeight}`);
            let clickCount = 0;
            let coords = {};
            img.addEventListener('click', event => {
                if (clickCount <= 1) {
                    if (clickCount === 0) {
                        coords.punkt1 = {
                            x: event.offsetX,
                            y: event.offsetY
                        }
                    } else {
                        coords.punkt2 = {
                            x: event.offsetX,
                            y: event.offsetY
                        }
                    }
                    const parent = img.parentNode;
                    const div1 = document.createElement('div');
                    div1.setAttribute('class', 'divKnap');
                    div1.style.top = `${event.offsetY - 5}px`;
                    div1.style.left = `${event.offsetX - 5}px`;
                    console.log(parent);
                    parent.appendChild(div1);
                    clickCount++;
                    console.table(coords);
                }
                if (clickCount === 2) {
                    let width = coords.punkt2.x - coords.punkt1.x;
                    let height = coords.punkt2.y - coords.punkt1.y;
                    console.log(`Width = ${width}, Height = ${height}`);
                    const canvas = document.querySelector('.finalImage');
                    canvas.setAttribute('width', Math.abs(width));
                    canvas.setAttribute('height', Math.abs(height));
                    const ctx = canvas.getContext('2d');
                    let position = {
                        x: Math.min(coords.punkt1.x, coords.punkt2.x),
                        y: Math.min(coords.punkt1.y, coords.punkt2.y)
                    };
                    let scale = img.naturalHeight / img.height;
                    ctx.drawImage(img, position.x * scale, position.y * scale,
                        Math.abs(width) * scale, Math.abs(height) * scale,
                        0, 0, Math.abs(width), Math.abs(height));

                    const dataURL = canvas.toDataURL();
                    const blobBin = atob(dataURL.split(',')[1]);
                    const array = [];
                    for (let i = 0; i < blobBin.length; i++) {
                        array.push(blobBin.charCodeAt(i));
                    }
                    const file = new Blob([new Uint8Array(array)], {
                        type: 'image/png'
                    });
                    uploadFile(file);
                }
            })
        }

        reader.readAsDataURL(files[0]);
        console.log(files);

        console.log(`HAH, Got'em`);

    }

    function handleFiles(files) {
        ([...files]).forEach(uploadFile);
    }

    function uploadFile(file) {
        let URL = 'http://localhost:3000/files';
        let formData = new FormData();

        formData.append('file', file);

        fetch(URL, {
                method: 'POST',
                mode: 'cors',
                body: formData
            })
            .then(response => {
                if (response.status === 200) {
                    const succMessage = document.querySelector('.succMessage');
                    succMessage.classList.add('showMe');
                }
            })
            .catch(error => console.log(error))
    }
}