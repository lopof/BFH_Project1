# Scrum backlog
## Project team
Name | Gitlab Alias | Function
--- | --- | --- 
Thomas Baumann | baumt7 | Maintainer
Severin Thalmann | thals5 | Developer
Gerhard Schwab | swg1 | Reporter

Gesamtzeit für Projekt 1: 494h <br>
Gesamtzeit für Anforerdungsspezifikationen im Modul Projektmanagement: 26h <br>
Punkt 1.2 bis 2 sind vor dem 1. Sprint realisiert worden. Zeitaufwand: 255h <br>
Zeit geplant von 12.11.2018 (Sprint 1) bis zu der Abgabe des Codes (23.12.2018): 180h

## Product Backlog
ID | Storyname | Description | Priority | Effort plan original | Effort plan updated | Effort acutal | Status
--- | --- | --- | --- | --- | --- | --- | ---
1.1 | Anforderungsspezifikation | Dokument Anforderungsspezifikation schreiben | High | 26 | 26 | 26 | Closed
1.2 | Requirement Engineering | Anforderungen mit dem Auftraggeber ermitteln und dem BFH Betreuer absprechen | High | 200 | - | 200 | Closed 
2 | Integration des Imageviewers in Gitlab | Der Imageviewer soll in ein Gitlab Projekt integrierbar sein. Anforderungen an Gitlab Pages prüfen und mögliche Probleme feststellen. | High | 50 | - | 55 | Closed
3 | Auflistung der Bilder im Imageviewer | Wenn der Imageviewer geöffnet wird soll er automatisch alle Verzeichnisse nach DICOM und NIFTI Bilder durchsuchen und in einem Panel anzeigen. | High | 85 | - | 85 | Closed
4 | Anzeigen der Bilder | Es können mehrere Bilder in der Auflistung ausgewählt und angezeigt werden. Bei direktem klick auf ein Bild wird nur dieses angezeigt. | High | 55 | - | 55 | Closed
5 | Slice View | in der man eine n x m Matrix mit axialen (oder andere Ebene) Slices sieht. Da sollte man den untersten, den obersten Slice, und den Abstand/oder die Anzahl Slices bestimmen können (das eine Ergibt sich dann aus dem Anderen). | Low | 10 | – | – | Open
6 | Orientierung Links und Rechts | Warnung, falls Orintierungs Infos im NIFTI fehlen, z.B. L und R labels sind Rot. | Medium | 15 | - | - | Closed
7 | 3D view | Aus den Bildern kann ein 3D Bild generiert werden. | Low | 0 | - | - | Open
8 | Farbliche Unterscheidung | Falls mehrere Bilder gleichzeitig angezeigt werden, können diese farblich unterschieden dargestellt werden. | Low | 15 | - | - | Open
9 | Überarbeitung der Handhabung des Viewers | Einige Einstellungen und Informationen sollen besser dargestellt und auffindbar sein. | Medium | 20 | - | 15 | Closed
10 | Reserve | Reserve | - | 20 | - | 15| Open


## Backlog Sprint 1 (12.11.2018 - 23.11.2018)
ID | Name | Description | Components | Owner | Reviewer | Priority | Effort plan original | Effort plan updated | Effort actual | Status
--- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---
3 | baumt7 | Einarbeitung in Papaya Viewer. Bash Script und yml File erstellen um DICOM und NIFTI Bilder aufzulisten und daraus ein HTML generieren um es dem Imageviewer zu übergeben | - | - | thals5 | High | 30 | - | 30 | Closed
9, 10 | thals5 | Einarbeitung in Papaya Viewer. Optionen anpassen. Einige Optionen im Papaya Viewer sind für unseren Viewer nicht geeignet, diese sollen entfernt werden. | - | - | baumt7 | High | 30 | - | 30 | Closed

## Backlog Sprint 2 (23.11.2018 - 14.12.2018)
ID | Name | Description | Components | Owner | Reviewer | Priority | Effort plan original | Effort plan updated | Effort actual | Status
--- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---
4 | baumt7 | Javascript Funktion integrieren um mehrere Bilder in den Viewer zu laden | - | - | thals5 | High | 45 | 45 | 45 | Closed
3 | thals5 | Auflistung der DICOM und NIFTI Bilder in einem Panel neben dem Viewer | - | - | baumt7 | High | 35 | - | 35 | Closed
6 | thals5 | Prüfen ob bei fehlenden Orientierungsinfos eine Warnung möglich ist  | - | - | baumt7 | High | 10 | - | 10 | Closed

## Backlog Sprint 3 (14.12.2018 - 23.12.2018)
ID | Name | Description | Components | Owner | Reviewer | Priority | Effort plan original | Effort plan updated | Effort actual | Status
--- | --- | --- | --- | --- | --- | --- | --- | --- | --- | ---
3,4 | baumt7 | Button einfügen für ein weiteres Bild hinzuzufügen. Script fertigstellen für die Auflistung der Bilder, damit die Auflistung einem Verzeichniss ähnelt | - | - | thals5 | High | 15 | - | 15 | Open
3 | thals5 | Der Name des aktuellen Bildes soll immer in ganzer Länge angezeit werden. Das Panel mit dem Verzeichniss soll dem Viewer angepasst werden | - | - | baumt7 | High | 15 | - | 15 | Open




## Retro Sprint 1
### Positiv
* Keine Merge Probleme bis jetzt

### Negativ
* Mit dem Gitlab Projekt 'testviewer' ist ein bisschen unklar woran gearbeitet wird

### Actions

## Retro Sprint 2
### Positiv
* Ziele erreicht

### Negativ
* Zeiteinteilung könnte besser sein

### Actions


## Final Retro
### Positiv

### Negativ

### Known issues
