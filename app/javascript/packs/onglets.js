console.log('hello');

const onglets = document.querySelectorAll('.onglet-btn');
const contents = document.querySelectorAll('.onglet');
let index = 0;

onglets.forEach(onglet => {
    onglet.addEventListener('click', () => {
        if(onglet.classList.contains('btn-active')){
            return;
        } else {
            onglet.classList.add('btn-active');
        }

        index = onglet.getAttribute("data-anim");
        console.log(index);

        for(i = 0; i < onglets.length; i++){
            if(onglets[i].getAttribute('data-anim') != index){
                onglets[i].classList.remove('btn-active');
            }
        }

        for(j = 0; j < contents.length; j++){
            if(contents[j].getAttribute('data-anim') == index){
                contents[j].id ='active';
            } else {
                contents[j].id = '';
            }
        }
    })
})