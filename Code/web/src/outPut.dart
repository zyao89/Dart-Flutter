import 'dart:html';

class OutPut {
    Element _$codeEl;
    Element _$resultEl;

    OutPut(String codeId, String resultId) {
        _$codeEl = querySelector('#$codeId');
        _$resultEl = querySelector('#$resultId');

        _init();
    }

    _init() {
        _$codeEl.style.border = 'solid 1px grey';
        _$codeEl.style.padding = '5px';
        _$codeEl.style.margin = '5px 0';

        _$resultEl.style.border = 'solid 1px green';
        _$resultEl.style.padding = '5px';
        _$resultEl.style.margin = '5px 0';
    }

    code(List cs) {
        var c = cs.join('<br>');
        _$codeEl.innerHtml = c;
    }

    print(Object text) {
        _$resultEl.appendHtml('<p>$text</p>');
    }
}
