import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { HeaderComponent } from './header/header.component';
import { SectionBannerComponent } from './section-banner/section-banner.component';
import { SectionInfoComponent } from './section-info/section-info.component';
import { SectionExperiencesComponent } from './section-experiences/section-experiences.component';
import { SectionEducationComponent } from './section-education/section-education.component';
import { SectionSkillsComponent } from './section-skills/section-skills.component';
import { SectionProjectsComponent } from './section-projects/section-projects.component';
import { FooterComponent } from './footer/footer.component';
import { CarrouselComponent } from './carrousel/carrousel.component';

@NgModule({
  declarations: [
    AppComponent,
    HeaderComponent,
    SectionBannerComponent,
    SectionInfoComponent,
    SectionExperiencesComponent,
    SectionEducationComponent,
    SectionSkillsComponent,
    SectionProjectsComponent,
    FooterComponent,
    CarrouselComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
