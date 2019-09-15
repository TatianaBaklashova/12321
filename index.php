<?php
    // объявляем класс с именем Rectangle
    class Rectangle
    {
        // свойство "ширина"
        private $width;
        // свойство "высота"
        private $height;

        // конструктор класса
        public function __construct($x, $y)
        {
            $this->width = $x;
            $this->height = $y;
        }

        // метод "посчитать площадь"
        public function Square()
        {
            return $this->width * $this->height;
        }
    }

 // объявляем класс с именем Circle
   class Circle
    {
        // свойство "радиус"
        private $radius;

        // конструктор класса
        public function __construct($r)
        {
            $this->radius = $r;
        }

        // метод "посчитать площадь"
        public function Square()
        {
            return M_PI*pow($this->radius,2);
        }
    }

 // объявляем класс с именем Triangle
   class Triangle
    {
        // свойство "основание"
        private $base;
        //свойство "высота"
        private $height;
        // конструктор класса
        public function __construct($x,$y)
        {
            $this->base = $x;
            $this->height = $y;
        }

        // метод "посчитать площадь"
        public function Square()
        {
            return 0.5*$this->base*$this->height;
        }
    }
    $rects = array();
    // заполняем массив экземплярами
    $rects['1'] = new Rectangle(rand(10,50), rand(10,50));
    $rects['2'] = new Circle(rand(10,50));
    $rects['3'] = new Triangle(rand(10,50), rand(10,50));
    //массив для площадей фигрур
    $area= array();
    // выводим площадь каждого экземпляра
    foreach($rects as $key => $rect)
    {
        if($key==1)
        {
        echo 'Площадь прямоугольника: ' . $rect->Square() .
                "<br />\n";
                $area[]=$rect->Square();
        }
        if($key==2)
            {  
        echo 'Площадь круга: ' . $rect->Square() .
                "<br />\n";
                $area[]=$rect->Square();
            }
        if($key==3)
            {  
        echo 'Площадь треугольника: ' . $rect->Square() .
                "<br />\n";
                $area[]=$rect->Square();
            }
    }
    //сортировка массива с площадями фигур по убыванию
    arsort($area);
    //вывод отсортированного массива
    print_r($area);


?>