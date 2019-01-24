import 'outPut.dart';
import './01-types.dart';
import './02-functions.dart';
import './03-paramName.dart';
import './04-operator.dart';
import './05-flow.dart';
import './06-class.dart';
import './07-abstract.dart';
import './08-override.dart';
import './09-enum.dart';
import './10-mixins.dart';
import './11-static.dart';
import './12-T.dart';
import './20-http.dart';
import './30-libs.dart';

void main() {
    print('main run...');

    final output = new OutPut('Code', 'Result');

    // final types = Types(output);
    // types.run();

    // final functions = new Functions(output);
    // functions.run();

    // ParamName(output).run();

    // Operator(output).run();

    // Flow(output).run();

    // Clazz(output).run();

    // Abstract(output).run();

    // Override(output).run();

    // Enums(output).run();

    // Mixins(output).run();

    // Static(output).run();

    // T(output).run();

    // Async(output).run();

    Libs().run();
}
