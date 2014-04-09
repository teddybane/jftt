__author__ = 'zugo'

alph = "abcd"
fullAlph = " abcdefghijklmnoprstuwxyz"
patt = "ab"
mm = len(patt)
txt = "bbabcab"

def finite_automation_matcher( text, delta, m):# m to stan akceptujący
	n = len(text)
	q = 0
	for i in range(n):
		q = delta[(q,  text[i])] # tutaj hopsia po grafie
		if q == m:
			print ("wzorzec wystepuje z przesunieciem " + str(1+i-m))


def compute_transition_function(pattern, alphabet):
	m = len(pattern)
	delta = dict()
	for q in range(m+1):
		for a in alphabet:
			k = min(m+1, q+2) #+1 do indeksów z powodu do-while;  q+1 z powodu tego że automat powinien być dłuższy o jeden od
			while True:
               # if is_suffix(pattern, k, q, a):
                #    break
				k = k-1
				#print(is_suffix(pattern,k,q,a))
				if is_suffix(pattern, k, q, a):
					break
			delta[(q, a)] = k
	print (delta)
	return delta


def isSuffix(Pk, Pq):


	dqi = len(Pq)-1
	ldif = len(Pq)- len(Pk)
	bot = dqi - len(Pk)

	while (dqi > bot and Pk[dqi-ldif] == Pq[dqi]):
		dqi = dqi - 1

	if Pk == "":
		return True

	if(len(Pk)>len(Pq)):
		return False

	if dqi == bot:
		return True
	else:
		return False


def is_suffix(P, k, q, a):
	#jeśli długość pk jest wieksza od pq to automatycnie pk nie moze byc sufixem pq

	#przygotować Pk
	Pk = r""
	for kk in range(k):
		Pk = Pk + P[kk]
	print("Pk: " + Pk + "; k="+str(k) )

	#przyggotować Pq|a
	Pq = r""
	for qq in range(q):
		Pq = Pq + P[qq]
	Pq = Pq+a
	print("Pq: " + Pq+"; q="+str(q) )

	return isSuffix(Pk, Pq)

#print(isSuffix("a", "a"))


#print(is_suffix("aaba", 2, 4, "a"))


finite_automation_matcher(txt, compute_transition_function(patt, alph), mm)


