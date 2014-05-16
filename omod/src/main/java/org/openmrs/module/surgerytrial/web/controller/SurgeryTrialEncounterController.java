package org.openmrs.module.surgerytrial.web.controller;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.openmrs.Patient;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.openmrs.Encounter;
import org.openmrs.api.context.Context;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

/**
 * Created by olbrian on 5/16/14.
 */
@Controller
public class SurgeryTrialEncounterController {
    protected final Log log = LogFactory.getLog(getClass());

    @RequestMapping(value = "/module/surgerytrial/encounter", method = RequestMethod.GET)
    public void manage(ModelMap model,@RequestParam(required = false, value="patientId") Integer ptId)
    {
        List<Encounter> encountersForPatients = Context.getEncounterService().getEncountersByPatient(Context.getPatientService().getPatient(ptId));
        model.addAttribute("allEncounters", encountersForPatients);

//        List<Encounter> encounterList
//
//        List<Patient> allPatients = org.openmrs.api.context.Context.getPatientService().getAllPatients();
//        model.addAttribute("patients", allPatients);
//        model.addAttribute("user", org.openmrs.api.context.Context.getAuthenticatedUser());

    }
}