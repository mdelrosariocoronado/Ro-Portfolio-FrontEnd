import { ComponentFixture, TestBed } from '@angular/core/testing';

import { SectionExperiencesComponent } from './section-experiences.component';

describe('SectionExperiencesComponent', () => {
  let component: SectionExperiencesComponent;
  let fixture: ComponentFixture<SectionExperiencesComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      declarations: [ SectionExperiencesComponent ]
    })
    .compileComponents();

    fixture = TestBed.createComponent(SectionExperiencesComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
