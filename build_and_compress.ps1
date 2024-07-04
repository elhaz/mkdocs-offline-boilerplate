# 프로젝트 폴더 경로 = 이 스크립트파일 위치의 상위폴더
$projectPath = Split-Path -Parent $MyInvocation.MyCommand.Path
# 프로젝트 폴더로 이동
cd $projectPath
# 프로젝트 폴더 알리기
Write-Host "Project Path: " $projectPath
# 가상환경 실행
.\venv\Scripts\Activate.ps1
# mkdocs build 실행
mkdocs build
# archive 폴더 존재 확인후 없으면 생성
if (!(Test-Path archive)) {
    New-Item -ItemType Directory -Path archive
}
# 현재시간을 기준으로 압축파일명 생성
$zipFileName = "archive\manual_" + (Get-Date -Format "yyyyMMdd_HHmmss") + ".zip"
# 압축파일 생성
Compress-Archive -Path "site" -DestinationPath $zipFileName
# 압축파일명 출력
Write-Host "Compressed file: " $zipFileName
# 가상환경 종료
deactivate

