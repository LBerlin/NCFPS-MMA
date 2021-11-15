(*
 Wolfram Language script file.
 
 Can be run with WolframScript.
 In Eclipse, right-click -> Open With -> Other... ->
 External Programs -> WolframScript
*)

scriptDir = DirectoryName @ $InputFileName

SetDirectory @ scriptDir;

pacletFile = CreatePacletArchive["..\\NCFPS", scriptDir]

existingPaclets = FileNames["*.paclet"];
toMove = Pick[existingPaclets, 
   Order[#, FileNameTake[pacletFile]] & /@ existingPaclets, 1];

If[FailureQ@CopyFile[#, FileNameJoin[{"Archive", #}]], $Failed, 
    DeleteFile[#]] & /@ toMove;