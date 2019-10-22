function validate(form) {
    const inputs = form.querySelectorAll('input');
    inputs.forEach(input => {
        if (input.required && !input.value)
            input.classList.add('inputError');
        else
            input.classList.remove('inputError');
        if (input.dataset.validate === 'name') {
            if (input.value && !/^[\d]{2,8}$/.test(input.value))
                input.classList.add('inputError');
            else
                input.classList.remove('inputError');
        }
        if (input.dataset.validate === 'mail') {
            if (input.value && !/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,10})+$/.test(input.value))
                input.classList.add('inputError');
            else
                input.classList.remove('inputError');
        }
        if (input.dataset.validate === 'phone') {
            if (input.value && !/^[\d]{2,8}$/.test(input.value))
                input.classList.add('inputError');
            else
                input.classList.remove('inputError');
        }

        if (input.dataset.validate === 'password') {
            if (input.value && input.value.length < 8)
                input.classList.add('inputError');
            else
                input.classList.remove('inputError');
        }

    });
}

document.querySelector('form').addEventListener('submit', e => {
    e.preventDefault();
    validate(e.target);
})