import { Component, inject } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { JsonPipe } from '@angular/common';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [JsonPipe],
  template: `
    <main style="font-family:system-ui; padding:24px;">
      <h1>Luna UI</h1>
      <p>Backend health: <strong>{{ health?.status || '...' }}</strong></p>
      <pre style="background:#111; color:#eee; padding:12px; border-radius:8px; overflow:auto;">
{{ health | json }}
      </pre>
    </main>
  `,
})
export class AppComponent {
  private http = inject(HttpClient);
  health: any;

  ngOnInit() {
    this.http.get('/api/actuator/health').subscribe({
      next: (data) => (this.health = data),
      error: (err) => (this.health = { error: true, details: err?.message || err }),
    });
  }
}
