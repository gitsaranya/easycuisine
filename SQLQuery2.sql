﻿select distinct Recipe.R_Name from Recipe INNER JOIN IR ON IR.R_Id = Recipe.R_Id where IR.I_Id IN ('D101','M101','M103','M106');