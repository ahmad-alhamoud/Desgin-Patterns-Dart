// provide a surrogate or placeholder for another object to control access to it.

// like a gateway for an object

abstract class SMSService {
  String sendSMS(String customerId, String mobile, String sms);
}

class ConcerateSMSServices extends SMSService {
  @override
  String sendSMS(String customerId, String mobile, String sms) {
    return "customer id $customerId";
  }
}

class SMSServiceProxy {
  
  int _messageCounter = 0;
  ConcerateSMSServices? _concerateSMSServices;

  String sendSMS(String customerId, String mobile, String sms) {

      _concerateSMSServices ??= ConcerateSMSServices();
      _messageCounter++; 
      return _concerateSMSServices!.sendSMS(customerId, mobile, sms);
  
  }

}
