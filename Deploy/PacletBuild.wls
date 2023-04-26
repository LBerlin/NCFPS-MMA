#!/usr/bin/env wolframscript

(* Wolfram Script *)
(* Created by the Wolfram Language Plugin for IntelliJ, see http://wlplugin.halirutan.de/ *)
(* :Author: Lance *)
(* :Date: 2023-04-26 *)

<<PacletTools`

PacletBuild::buildFailed =
    "Paclet build failed."

scriptDir = DirectoryName @ $InputFileName;
SetDirectory @ scriptDir;

paclet = Import["..\\NCFPS\\PacletInfo.m"];
siteInfo =
    PacletSite[
      Append[paclet,
        Location ->
            "https://raw.githubusercontent.com/LBerlin/NCFPS-MMA/main"
      ]
    ];

buildResult = PacletBuild["../NCFPS"];

If[
    Head@buildResult == Success,
    pacletFile = buildResult[[2]]["PacletArchive"];
    RenameFile[
      pacletFile,
      FileNameJoin[{"../Paclets", FileNameTake[pacletFile]}]
    ];,
    Message[PacletBuild::buildFailed]
];