package eu.ohmrun.pml.term.xml;

using stx.Nano;
using stx.Test;
using stx.Log;

import eu.ohmrun.pml.term.Xml;

class Test{
  static public function main(){
    __.test().run(
      [
        new XmlToPmlTest(),
      ],[]
    );
  }
}
class XmlToPmlTest extends TestCase{
  public function test(){
    final source = Xml.parse(__.resource("Sample-XML-With-Multiple-Records").string());
    final encode = new eu.ohmrun.pml.term.xml.XmlToPml();
    final value  = encode.apply(source);
    final output = encode.strip_spaces(value);
    trace(output.toString_with(XmlData._.toString),{ width  : 60 });
  }
  // public function test_strip_regex(){
  //   final regex = "^\s+"
  // }
}