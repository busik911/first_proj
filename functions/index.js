const functions = require('firebase-functions');
const admin = require('firebase-admin');

admin.initializeApp(functions.config().firebase);
const db = admin.firestore();
const fcm = admin.messaging();



exports.sendToTopic = functions.firestore
  .document('newsPaper/{uid}')
  .onCreate(async snapshot => {
    const news = snapshot.data();

    payload = {
      notification: {
        title: news.title,
        body: news.description,
        sound:'default',
        click_action: 'FLUTTER_NOTIFICATION_CLICK' // required only for onResume or onLaunch callbacks
      }
    };

    return fcm.sendToTopic('newsPaper', payload);
  });