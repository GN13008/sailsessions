// app/javascript/channels/chatroom_channel.js
import consumer from "./consumer";

const initUserCable = () => {
const nav = document.querySelector('.navbar.navbar-expand-sm.navbar-light.navbar-lewagon')
  const id = Number(nav.dataset.userId);

  consumer.subscriptions.create({ channel: "UserChannel", id: id }, {
    received(data) {
      console.log(data); // called when data is broadcast in the cable
      const notifBubble = document.getElementById(data).lastElementChild;
      notifBubble.classList.add('notif-active');
    },
  });
}

export { initUserCable };