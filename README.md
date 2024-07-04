# 오프라인 매뉴얼을 위한 Material for MkDocs 설정

프로젝트마다 새로 설정파일 만들어주는게 귀찮아서 만들었습니다.

## 필요 설치 패키지
```shell
pip install mkdocs-material
pip install mkdocs-glightbox
```

## Commands

* `mkdocs new [dir-name]` - Create a new project.
* `mkdocs serve` - Start the live-reloading docs server.
* `mkdocs build` - Build the documentation site.
* `mkdocs -h` - Print help message and exit.

## Project layout

    mkdocs.yml                  # 설정파일입니다.
    docs/
        index.md                # 문서 홈입니다.
        ...                     # 다른 마크다운 페이지, 이미지 및 기타 파일입니다.
        js/
            iframe-worker.js    # 오프라인용 폴리필 파일입니다.
            mermaid.min.js      # 오프라인용 mermaid 다이어그램입니다.

## 이 보일러플레이트의 주요 설정

- 오프라인용으로 설정해두었습니다. api로 참조되는 js 파일을 로컬을 참조하도록 변경해두었습니다.
- build 이후 index.html 을 실행하면 브라우저에서 file:// 로 표시됩니다.
- 자주사용하는 extension 들을 미리 추가해두었습니다.

### extension 추가 목록

- pymdownx.critic : 문서에 추가, 삭제, 업데이트 섹션을 강조하기 위한 마크업 확장 구분입니다.
- pymdownx.tasklist: 체크리스트를 만들기 위한 마크업 확장입니다.
- pymdownx.highlight: 코드 하이라이트를 위한 확장입니다.
- pymdownx.inlinehilite: 인라인 코드 하이라이트를 위한 확장입니다.
- pymdownx.snippets: 다른 문서 또는 소스파일 콘텐츠를 문서에 임베드하는 확장입니다.
- pymdownx.superfences: 코드 블록을 임의로 중첩할수 있도록 하는 확장입니다. mermaid 다이어그램을 사용하기 위해 추가했습니다.
- admonition: 콜아웃 기능을 사용하게 해주는 확장입니다.
- pymdownx.details: 콜아웃 축소 확장입니다.
- attr_list: markdown 인라인에서 html 속성을 추가할 수 있도록 하는 확장입니다.

### Plugin
- offline : 정적 파일을 서버에 게시하지 않고도 오프라인에서 사용할 수 있도록 하는 플러그인입니다.
- search : 문서 헤더에 검색창을 추가하고 사용자가 문서를 검색할 수 있도록 하는 플러그인입니다.
- glightbox: 문서에 이미지 확대 기능을 제공하는 플러그인입니다.
