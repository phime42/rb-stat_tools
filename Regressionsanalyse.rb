x = [2.9, 4.1, 4.9, 5.0, 4.4, 3.1, 3.9, 3.7]
y = [6, 9, 8, 7, 6, 7, 8, 5]

def quadrieren(array)
  hurz = []
  array.cycle(1) { |x| hurz << x*x }
  hurz
end

def summe(array)
  array.inject(:+)
end

def mittelwert(array)
  summe(array) / array.length
end


def arrays_multiplizieren(array1,array2)
  i = 0
  ergebnis = []
  if !array1.length == array2.length
    puts 'unterschiedlich lange messreihen, du lappen'
    return
  end

  array1.each_with_index do |x,i|
    ergebnis << array1[i] * array2[i]
  end
  ergebnis
end

b = (summe(arrays_multiplizieren(x, y)) - x.length*mittelwert(x)*mittelwert(y)) / ( summe(quadrieren(x)) - x.length * mittelwert(x) * mittelwert(x))
puts b