warn("Extenso.lua")
local v1 = {}
local v_u_2 = {
	"ZERO",
	"UM",
	"DOIS",
	"TR\195\138S",
	"QUATRO",
	"CINCO",
	"SEIS",
	"SETE",
	"OITO",
	"NOVE"
}
local v_u_3 = {
	[10] = "DEZ",
	[11] = "ONZE",
	[12] = "DOZE",
	[13] = "TREZE",
	[14] = "QUATORZE",
	[15] = "QUINZE",
	[16] = "DEZESSEIS",
	[17] = "DEZESSETE",
	[18] = "DEZOITO",
	[19] = "DEZENOVE"
}
local v_u_4 = {
	[2] = "VINTE",
	[3] = "TRINTA",
	[4] = "QUARENTA",
	[5] = "CINQUENTA",
	[6] = "SESSENTA",
	[7] = "SETENTA",
	[8] = "OITENTA",
	[9] = "NOVENTA"
}
local v_u_5 = {
	"CENTO",
	"DUZENTOS",
	"TREZENTOS",
	"QUATROCENTOS",
	"QUINHENTOS",
	"SEISCENTOS",
	"SETECENTOS",
	"OITOCENTOS",
	"NOVECENTOS"
}
local v_u_6 = { "MIL", "MILH\195\149ES", "BILH\195\149ES" }
local v_u_7 = "CEM"
local v_u_8 = "E"
function v1.SetLang(_, p9)
	-- upvalues: (ref) v_u_7, (ref) v_u_8, (ref) v_u_2, (ref) v_u_3, (ref) v_u_4, (ref) v_u_5, (ref) v_u_6
	if p9.Hundred and p9.Conjunction then
		v_u_7 = p9.Hundred
		v_u_8 = p9.Conjunction
		local v10 = p9.Units
		local v11 = p9.Special
		local v12 = p9.Tens
		local v13 = p9.Hundreds
		v_u_6 = p9.Thousands
		v_u_5 = v13
		v_u_4 = v12
		v_u_3 = v11
		v_u_2 = v10
	end
end
function v1.Convert(p14, p15)
	-- upvalues: (ref) v_u_2, (ref) v_u_3, (ref) v_u_4, (ref) v_u_8, (ref) v_u_7, (ref) v_u_5, (ref) v_u_6
	if p15 < 0 then
		return false, "O n\195\186mero n\195\163o pode ser negativo."
	end
	if p15 > 999999999 then
		return false, "Limite de n\195\186mero antigido."
	end
	if p15 == 0 then
		return true, v_u_2[p15]
	end
	if p15 < 20 then
		return true, v_u_2[p15] or v_u_3[p15]
	end
	if p15 < 100 then
		local v16 = math.floor(p15 / 10)
		local v17 = p15 % 10
		local v18 = v_u_4[v16]
		if v17 > 0 then
			v18 = v18 .. " " .. v_u_8 .. " " .. v_u_2[v17]
		end
		return true, v18
	end
	if p15 < 1000 then
		local v19 = math.floor(p15 / 100)
		local v20 = p15 % 100
		local v21
		if v19 == 1 and v20 == 0 then
			v21 = v_u_7
		else
			v21 = v_u_5[v19]
			if v20 > 0 then
				v21 = v21 .. " " .. v_u_8 .. " " .. select(2, p14:Convert(v20))
			end
		end
		return true, v21
	end
	for v22 = #v_u_6, 1, -1 do
		local v23 = 1000 ^ v22
		if v23 <= p15 then
			local v24 = math.floor(p15 / v23)
			local v25 = p15 % v23
			local v26
			if v24 == 1 then
				v26 = v_u_6[v22]
			else
				v26 = select(2, p14:Convert(v24)) .. " " .. v_u_6[v22]
			end
			if v25 > 0 then
				local _, v27 = p14:Convert(v25)
				if v27 ~= "" then
					v26 = v26 .. (v24 < 100 and " " .. v_u_8 .. " " or " ") .. v27
				end
			end
			return true, v26
		end
	end
end
return v1

