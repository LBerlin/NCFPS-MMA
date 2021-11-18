(*
 Wolfram Language script file.
 
 Can be run with WolframScript.
 In Eclipse, right-click -> Open With -> Other... ->
 External Programs -> WolframScript
*)

CreatePacletArchive::versionExists = 
	"Paclet version `1` already exists."

scriptDir = DirectoryName @ $InputFileName;
SetDirectory @ scriptDir;

existingPaclets = FileNames["..\\Paclets\\*.paclet"];
versions = Last /@ StringSplit[FileBaseName /@ existingPaclets, "-"];
paclet = Import["..\\NCFPS\\PacletInfo.m"];

If[
 FreeQ[versions, 
  version = 
   Apply[Association][paclet][Version]],
 CreatePacletArchive["..\\NCFPS", NotebookDirectory[]], 
 Message[CreatePacletArchive::versionExists, version]
]

(* 
toMove = Pick[existingPaclets, 
   Order[#, FileNameTake[pacletFile]] & /@ existingPaclets, 1];

If[FailureQ@CopyFile[#, FileNameJoin[{"Archive", #}]], $Failed, 
    DeleteFile[#]] & /@ toMove; 
*)

siteInfo = 
  PacletSite[
   Append[paclet, 
    Location -> 
     "https://raw.githubusercontent.com/LBerlin/NCFPS-MMA/paclet-conversion"]];
Export["..\\PacletSite.m", siteInfo];
CreateArchive["..\\PacletSite.m", "..\\PacletSite.mz", OverwriteTarget -> True];
    