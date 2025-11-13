# TASKS — Treści zadań i punktacja (50 pkt + do 3 pkt bonus)

## Zadanie 1 — Struktura i przekierowania (10 pkt)
1. (3 pkt) Jednym poleceniem utwórz katalog `out/`.
2. (3 pkt) Jednym poleceniem utwórz katalog `work/notes/` (z utworzeniem brakujących rodziców).
3. (4 pkt) Z pliku `data/logs/system.log` wypisz linie zawierające `ERROR` lub `WARN` (case-insensitive) do `out/warn_err.txt`.
   Wymagania: filtr bez rozróżniania wielkości liter; wynik zapisany do wskazanego pliku.

##### Proszę wszystkie komendy wykorzystanie w zadaniach 1 i 2 wpisać do pliku tekstowego **work/notes/nazwa.rozszerzenie**

## Zadanie 2 — Filtry i potoki (WYBIERZ JEDNĄ WERSJĘ, 10 pkt)

**Wersja 2A (CSV):**  
Z plików `data/csv/a.csv` i `data/csv/b.csv` przygotuj zestawienie **najczęstszych wartości** w kolumnie `value` i zapisz do `out/top_values.txt` w formacie:  
`<liczba> <wartość>` (posortowane malejąco po liczbie).  
- (6 pkt) Poprawny łańcuch przetwarzania (parsowanie CSV po przecinku, agregacja i sortowanie malejąco).  
- (2 pkt) Poprawny format linii `liczba spacja wartość`.  
- (2 pkt) Brak nagłówków w wyniku / poprawne sortowanie malejące.

**Wersja 2B (tekst):**  
Z pliku `data/lorem.txt` wypisz **Top 10 najczęstszych słów** (bez rozróżniania wielkości liter), jeden wynik na linię w formacie:  
`<liczba> <słowo>` — i zapisz do `out/top_words_lorem.txt`.  
- (6 pkt) Poprawny łańcuch (tokenizacja słów, normalizacja do małych liter, agregacja, sortowanie malejąco).  
- (2 pkt) Dokładnie 10 pozycji w wyniku.  
- (2 pkt) Poprawny format linii i sortowanie malejące po liczbie.


## Zadanie 3 — Skrypt użytkowy (15 pkt)
Plik: `scripts/report.sh`  
Wywołanie: `bash scripts/report.sh <KATALOG>`
1. (3 pkt) Gdy `<KATALOG>` nie istnieje — czytelny komunikat i zakończenie z kodem wyjścia różnym od zera.
2. (4 pkt) Gdy istnieje — wypisz bieżącą datę/czas w formacie `YYYY-MM-DD HH:MM:SS`.
3. (8 pkt) Wypisz TOP‑5 największych *podkatalogów* w `<KATALOG>` (format „human‑readable” dla rozmiarów).  
   Dopuszczalne użycie `du` + `sort` + ograniczenie do 5 elementów; jeśli brak `sort -h`, użyj `du -s` + `sort -n`.

Wymagania jakościowe: poprawne cytowanie zmiennych/ścieżek; brak „parsowania ls”. 
**Dla pełnej liczby punktów wymagane komentarze w skrypcie tłumaczące co się w nim dzieje.**

Bonus (+3 pkt): przełącznik `-n` (dry‑run) — tryb podglądu.

## Zadanie 4 — Git workflow (15 pkt)
1. (3 pkt) Praca na gałęzi `kolokwium/<TwojLogin>`.
2. (6 pkt) ≥ 3 sensowne commity odzwierciedlające postęp.
3. (3 pkt) Push i Pull Request do własnego forka (nie do upstream).
4. (3 pkt) Krótki opis w PR (1–3 zdania): co poszło OK, co sprawiło trudność.