import 'package:injectable/injectable.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import '../network/network_constants.dart';

@Injectable()
class TelegramRepo {
  final SupabaseClient supabaseClient;

  TelegramRepo({required this.supabaseClient});

  Future<bool> applyForCourse({
    required String email,
  }) async {
    try {
      await supabaseClient.functions.invoke(
        NetworkConstants.applyForCourseEdgeFunc,
        method: HttpMethod.post,
        body: {
          'text': email,
          'chat_id': NetworkConstants.chatId,
        },
      );
    } catch (e) {
      await Sentry.captureException(e);
      return false;
    }

    return true;
  }
}
