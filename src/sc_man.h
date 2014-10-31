#ifndef SC_MAN_H
#define SC_MAN_H

#include "doomtype.h"

void SC_Open(char *name);
void SC_OpenLump(char *name);
void SC_OpenFile(char *name);
void SC_Close(void);
boolean SC_GetString(void);
void SC_MustGetString(void);
void SC_MustGetStringName(char *name);
boolean SC_GetNumber(void);
void SC_MustGetNumber(void);
void SC_UnGet(void);
//boolean SC_Check(void);
boolean SC_Compare(char *text);
int SC_MatchString(char **strings);
int SC_MustMatchString(char **strings);
void SC_ScriptError(char *message);

extern char *sc_String;
extern int sc_Number;
extern int sc_Line;
extern boolean sc_End;
extern boolean sc_Crossed;
extern boolean sc_FileScripts;
extern char *sc_ScriptsDir;

#endif
