Caramel
=======

To sweet up your ruby code


    irb(main):002:0> require './lib/caramel'
    => true

    irb(main):003:0> 'john'.is 'john'
    => true

    irb(main):004:0> 'john'.is.empty?
    => false

    irb(main):005:0> 'john'.is_not.empty?
    => true

    irb(main):006:0> 'john'.is_not 'steven'
    => true

    irb(main):007:0> shopping_list = ['orange']
    => ["orange"]

    irb(main):008:0> 'banana'.in shopping_list
    => false

    irb(main):009:0> 'banana'.is_not.in shopping_list
    => true

    irb(main):009:0> 'banana'.is.not.in shopping_list
    => true

    irb(main):010:0> 'banana'.is.in shopping_list
    => false


Also in Japanese

    irb(main):002:0> require './lib/caramel/japanese'
    => true

    irb(main):003:0> 'にゃんこ'.は('にゃんこ').です
    => true

    irb(main):006:0> 'にゃんこ'.は('わんこ').ではありません
    => true

    irb(main):007:0> shopping_list = ['みかん']
    => ["みかん"]

    irb(main):008:0> shopping_list.は('バナナ').を含んでいます
    => false

    irb(main):009:0> shopping_list.は('バナナ').を含んでいません
    => true

    irb(main):010:0> shopping_list.は('みかん').を含んでいます
    => true

