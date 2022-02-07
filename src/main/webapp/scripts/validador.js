/**
 * validacao form
 */

function validar(){
	let nome = fmViagem.nome.value
	let valAt = fmViagem.valAt.value
	let valAnt = fmViagem.valAnt.value
	
	if(nome === ""){
		alert("Preencha o campo Nome")
		fmViagem.nome.focus()
		return false
	}else if(valAt === ""){
		alert("Preencha o campo Valor normal")
		fmViagem.valAt.focus()
		return false
	}else if(valAnt === ""){
		alert("Preencha o campo Valor com desconto")
		fmViagem.valAnt.focus()
		return false
	}else{
		document.forms["fmViagem"].submit()
	}
}
