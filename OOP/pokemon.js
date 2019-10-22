class Pokemon {
    constructor(name, move1, move2, move3, move4) {
        this.name = name;
        this.move1 = move1;
        this.move2 = move2;
        this.move3 = move3;
        this.move4 = move4;
    }
    appear() {
        setTimeout(() => {
            console.log(`A wild ${this.name} appeared!`);
        }, 1000);
    }
    enterBattle() {
        setTimeout(() => {
            console.log(`Go ${this.name}!`);
        }, 3000);

    }
    moves() {
        setTimeout(() => {
            console.log(`${this.name} can use ${this.move1}, ${this.move2}, ${this.move3} and ${this.move4}`);
        }, 5000);

    }
    attack() {
        setTimeout(() => {
            console.log(`${this.name} used ${this.move1}`);
        }, 7000);

    }
    faint() {
        setTimeout(() => {
            console.log(`The wild ${this.name} fainted`);
        }, 9000);

    }
};

class TrainerPokemon extends Pokemon {
    constructor(name, move1, move2, move3, move4) {
        super(name, move1, move2, move3, move4);
    }
    gainEXP() {
        setTimeout(() => {
            console.log(`${this.name} gained 420 EXP`);
        }, 10000);
    }
}

const pikachu = new TrainerPokemon("Pikachu", "Thunderbolt", "Quick Attack", "Tackle", "Volt Tackle");
const blastoise = new Pokemon("Blastoise");
blastoise.appear();
pikachu.enterBattle();
pikachu.moves();
pikachu.attack();
blastoise.faint();
pikachu.gainEXP();