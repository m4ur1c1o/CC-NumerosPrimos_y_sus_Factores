def saca_modulo_bien(i, p)
	x = 0
	div = ((i.to_f / p)).round(3).to_s #quitamos esto 
	# print "estamos sacando el modulo, obtuvimos #{div} \n"
	flag = false
	while x < div.size && flag == false
		if div[x] == "."
			flag = true
			x += 1
		else
			x += 1
		end
	end
	return div.slice(x, div.size - x)
end

def primos_antes_de(q)
	p = 3
	arr = [2]
	iteracion = 0
	while p <= q
		i = 2
		m = saca_modulo_bien(p, i).to_i
		until m == 0 || i == p
			print "estamos dividiendo #{p}/#{i} y nos da .#{m} \n"
			print "no divide \n"
			if i == p - 1
				print "llegue al tope \n"
 				print "metemos #{p}, iteracion: #{iteracion} \n"
				arr << p
				print "el arreglo esta quedando asi: "
				p arr
			end
			iteracion += 1
			i += 1
			m = saca_modulo_bien(p, i).to_i
		end
		p += 1
		print "cambio de p, vale: #{p} \n"
		print "cambio de i, vale: #{i} \n"
	end
	return arr
end

#puts primos_antes_de(5)

def prime_factors(q)
	factores = []
	raiz = Math.sqrt(q)
	primos = primos_antes_de(raiz.ceil)
	# p primos
	i = 0
	until i == primos.length
		m = saca_modulo_bien(q, primos[i]).to_i
		# print "q: #{q} \n"
		# print "el modulo es: .#{m} \n"
		# print "primo intentado es #{primos[i]} \n"
		if m == 0
			factores << primos[i]
			# print "factores va quedando asi: "
			# print factores
			# puts
			q = q / primos[i]
			i -= 1
#			print "la q modificada queda asi: #{q} \n"
			if q == 1
#				print "los factores son: " 
#				print factores
#				puts
				return factores
			end
		end
		i += 1
	end
end

print prime_factors(20)














