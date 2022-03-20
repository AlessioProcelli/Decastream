import 'package:everstream/ControllerNew.dart';
import '../../Tipi/Azienda.dart';
import '../../Tipi/Hashtag.dart';
import '../../Tipi/Utente.dart';

class ControllerLogin extends ControllerNew {

  ControllerLogin() {

  }

  Future<bool> LoginIsCorrect(String username, String password) async {
    bool trovato = false;
    ControllerNew.database.isAzienda = false;
    Utente utente = await ControllerNew.database.findUser(username);

    ///Confronto utente recuperato con la password
    if (utente != null) {
      if (utente.password.compareTo(password) == 0) {
        trovato = true;
        ControllerNew.database.setActiveUser(utente);
      }
    }

    ///se esito negativo cerca tra le aziende
    if (trovato == false) {
      Azienda azienda = await ControllerNew.database.findAzienda(username);
      if (azienda != null) {
        if (azienda.password.compareTo(password) == 0) {
          trovato = true;
          ControllerNew.database.setActiveUser(azienda);
          List<Hashtag> hashlist = await ControllerNew.database
              .findCompanyHashtag(
              azienda.id);
          hashlist.forEach((hashtag) {
            azienda.hashtagList.add(hashtag);
          });
          azienda.orarioLavorativo =
          await ControllerNew.database.findOrarioLavorativo(azienda.id);
          ControllerNew.database.setActiveUser(azienda);
        }
      }
    }
    return trovato;
  }
}