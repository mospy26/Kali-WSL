
a::n0:
!= 0
a:!= NULL:NN:
!= NULL
a:!= nullptr:nn:
!= nullptr
a::#d:
#define 
a::#e:
#else
a::#en:
#endif
a:#if 0 ... #endif:#if:
#if 0
$selected$$end$
#endif

readme:
VA Snippet used by Surround With #ifdef.
If you have modified this item, you may delete it to restore the default upon next use.

a:#ifdef (VA):#if:
#ifdef $condition=_DEBUG$$end$
$selected$
#endif // $condition$

a:#ifdef ... #endif:#if:
#ifdef $end$
$selected$
#endif

a:#ifdef guard in a header::
#ifndef $FILE_BASE$_h__
#define $FILE_BASE$_h__

$selected$
#endif // $FILE_BASE$_h__

a:#ifndef ... #endif:#ifn:
#ifndef $end$
$selected$
#endif

a::#im:
#import "$end$"
a::#im:
#import <$end$>
a::#in:
#include "$end$"
a::#in:
#include <$end$>
a::#p:
#pragma 
readme:
VA Snippet used by Surround With #region.
If you have modified this item, you may delete it to restore the default upon next use.

a:#region (VA):#r:
#pragma region $end$$regionName$
$selected$
#pragma endregion $regionName$

a::#u:
#undef 
readme:
If you have modified this item, you may delete it to restore the default upon next use.

a:(...)::
($selected$)
a::/***:
/************************************************************************/
/* $end$                                                                     */
/************************************************************************/
a::/*-:
/*
 *	$end$
 */
a::////:
//////////////////////////////////////////////////////////////////////////

a:://-:
// $end$ [$MONTH$/$DAY$/$YEAR$ %USERNAME%]
a:_T():tc:
_T($end$)
a:_T(...)::
_T($selected$)$end$
a::sup:
__super::$MethodName$($MethodArgs$);


readme:
If you have modified this item, you may delete it to restore the default upon next use.

a:{...}::
{
	$end$$selected$
}

a::A:
ASSERT($end$)
a::b:
bool
a::class:
class $end$
{
public:
protected:
private:
};

a:class with prompt for name:class:
class $Class_name$
{
public:
	$Class_name$();
	~$Class_name$();
protected:
	$end$
private:
};

a:DEFINE_GUID:guid:
// {$GUID_STRING$} 
DEFINE_GUID($GUID_Name$, 
$GUID_DEFINITION$);

a:do { ... } while ():do:
do 
{
	$selected$
} while ($end$);

a:Doxygen - Class Comment::
/*!
 * \class $classname$
 *
 * \brief $end$
 *
 * \author %USERNAME%
 * \date $MONTHLONGNAME$ $YEAR$
 */

a:Doxygen - Class Comment (Long)::
/*!
 * \class $classname$
 *
 * \ingroup GroupName
 *
 * \brief $end$
 *
 * TODO: long description
 *
 * \note 
 *
 * \author %USERNAME%
 *
 * \version 1.0
 *
 * \date $MONTHLONGNAME$ $YEAR$
 *
 * Contact: user@company.com
 *
 */
a:Doxygen - Header Comment::
/*!
 * \file $FILE_BASE$.$FILE_EXT$
 *
 * \author %USERNAME%
 * \date $MONTHLONGNAME$ $YEAR$
 *
 * $end$
 */

a:Doxygen - Header Comment (Long)::
/*!
 * \file $FILE_BASE$.$FILE_EXT$
 * \date $DATE$ $HOUR$:$MINUTE$
 *
 * \author %USERNAME%
 * Contact: user@company.com
 *
 * \brief $end$
 *
 * TODO: long description
 *
 * \note
*/
a::DW:
DWORD
a:dynamic cast, run code on valid cast:dyna:
$New_type$ *$New_pointer$ = dynamic_cast<$New_type$ *>($Cast_this$);
if (NULL != $New_pointer$)
{
	$end$
}

a::fl:
float
a:for () { ... }:for:
for ($end$)
{
	$selected$
}

a:for loop forward:forr:
for (int $Index$ = 0; $Index$ < $Length$ ; $Index$++)
{
	$end$
}

a:for loop reverse:forr:
for (int $Index$ = $Length$ - 1; $Index$ >= 0 ; $Index$--)
{
	$end$
}

a:GUID IMPLEMENT_OLECREATE:guid:
// {$GUID_STRING$} 
IMPLEMENT_OLECREATE($GUID_Class$, $GUID_ExternalName$, 
$GUID_DEFINITION$);

a:GUID string:guid:
"{$GUID_STRING$}"
a:GUID struct instance:guid:
// {$GUID_STRING$} 
static const GUID $GUID_InstanceName$ = 
{ $GUID_STRUCT$ };

a::HA:
HANDLE
a::HI:
HINSTANCE
a::HR:
HRESULT
a::H:
HWND
a:IDL uuid:uuid:
uuid($GUID_STRING$)
a:if () { ... }:if:
if ($end$)
{
	$selected$
}

a:if () { ... } else { }:if:
if ($end$)
{
	$selected$
} 
else
{
}

a:if () { } else { ... }::
if ($end$)
{
} 
else
{
	$selected$
}

readme:
Simple Javadoc block comment.

a:Javadoc block comment:/**:
/**
 * $end$
 */
readme:
Simple Javadoc single line comment.

a:Javadoc single line comment:/**:
/** $end$ */
a::ll:
long long
a::LP:
LPARAM
a::LPB:
LPBYTE
a::LPC:
LPCTSTR
a::LPT:
LPTSTR
a::LR:
LRESULT
a:Member method implementation:bas:
//-----------------------------------------------------------------------------
$BaseClassName$::$MethodName$($MethodArgs$);
//-----------------------------------------------------------------------------

readme:
VA Snippet used by Surround With Namespace.
If you have modified this item, you may delete it to restore the default upon next use.

a:namespace (VA)::
namespace $end$
{
	$selected$
}

a:NULL:N:
NULL
a:nullptr:n:
nullptr
a::r:
return
a:return false;:rf:
return false;
a:return true;:rt:
return true;
readme:
Tip: use Create Implementation on "instance" after inserting the snippet.

a:Singleton Class::
class $classname$
{
public:
	~$classname$() { instance = nullptr; }

	static $classname$* Get() 
	{
		if (instance == nullptr)
			instance = new $classname$;
		return instance;
	}
private:
	$classname$() = default;
	static $classname$* instance;
};
a::struct:
struct $end$ 
{
};

a::switch:
switch ($end$)
{
case :
	break;
}

a::switch:
switch ($end$)
{
	$selected$
}

a::TC:
TCHAR
a:try { ... } catch {} catch {} catch {}:try:
try
{
	$selected$
}
catch (CMemoryException* e)
{
	$end$
}
catch (CFileException* e)
{
}
catch (CException* e)
{
}

a:TRY { ... } CATCH {}:TRY:
TRY 
{
	$selected$
}
CATCH (CMemoryException, e)
{
	$end$
}
END_CATCH

a::U:
UINT
a::UL:
ULONG
a::ui:
unsigned int
a::ul:
unsigned long
a::usi:
using namespace $end$;

a:while () { ... }:while:
while ($end$)
{
	$selected$
}

a::W:
WORD
a::WP:
WPARAM
readme:
VA Snippet used for suggestions of type bool.
If you have modified this item, you may delete it to restore the default upon next use.

a:SuggestionsForType bool::
true
false

readme:
VA Snippet used for suggestions of type BOOL.
If you have modified this item, you may delete it to restore the default upon next use.

a:SuggestionsForType BOOL::
TRUE
FALSE

readme:
VA Snippet used for suggestions in class definitions.
If you have modified this item, you may delete it to restore the default upon next use.

a:SuggestionsForType class::
public:
private:
protected:
virtual
void
bool
string
static
const

readme:
VA Snippet used for suggestions of type HANDLE.
If you have modified this item, you may delete it to restore the default upon next use.

a:SuggestionsForType HANDLE::
INVALID_HANDLE_VALUE
NULL

readme:
VA Snippet used for suggestions of type HRESULT.
If you have modified this item, you may delete it to restore the default upon next use.

a:SuggestionsForType HRESULT::
S_OK
S_FALSE
E_FAIL
E_NOTIMPL
E_OUTOFMEMORY
E_INVALIDARG
E_NOINTERFACE
E_UNEXPECTED

readme:
VA Snippet used for suggestions in loops.
If you have modified this item, you may delete it to restore the default upon next use.

a:SuggestionsForType loop::
continue;
break;

readme:
VA Snippet used for suggestions in switch statements.
If you have modified this item, you may delete it to restore the default upon next use.

a:SuggestionsForType switch::
case 
default:
break;

readme:
VA Snippet used for suggestions of type VARIANT_BOOL.
If you have modified this item, you may delete it to restore the default upon next use.

a:SuggestionsForType VARIANT_BOOL::
VARIANT_TRUE
VARIANT_FALSE

readme:
VA Snippet used for refactoring: Create From Usage.
If you have modified this item, you may delete it to restore the default upon next use.

a:Refactor Create From Usage Class::
$end$class $ClassName$
{
public:
	$ClassName$($ParameterList$) $colon$
		$MemberInitializationList$
	{
	}

	~$ClassName$()
	{
	}

protected:

private:
	$MemberType$			m$MemberName$;

};

readme:
VA Snippet used for refactoring: Create From Usage.
If you have modified this item, you may delete it to restore the default upon next use.

a:Refactor Create From Usage Class (C)::
$end$struct $ClassName$
{
	$ClassName$($ParameterList$)
	{
		$InitializeMember$;
	}

	$MemberType$			m$MemberName$;
};

readme:
VA Snippet used for refactoring: Create From Usage.
If you have modified this item, you may delete it to restore the default upon next use.

a:Refactor Create From Usage Class (Managed)::
$end$public ref class $ClassName$
{
public:
	$ClassName$($ParameterList$) $colon$
		$MemberInitializationList$
	{
	}

	~$ClassName$()
	{
	}

protected:

private:
	$MemberType$			m$MemberName$;

};

readme:
VA Snippet used for refactoring: Create From Usage.
If you have modified this item, you may delete it to restore the default upon next use.

a:Refactor Create From Usage Class (Platform)::
$end$namespace $NamespaceName$
{
	public ref class $ClassName$
	{
	public:
		$ClassName$($ParameterList$) $colon$
			$MemberInitializationList$
		{
		}

		~$ClassName$()
		{
		}

	protected:

	private:
		$MemberType$			m$MemberName$;

	};
}

readme:
VA Snippet used for refactoring: Create From Usage and Implement Interface.
If you have modified this item, you may delete it to restore the default upon next use.

a:Refactor Create From Usage Method Body::
throw std::logic_error("The method or operation is not implemented.");
readme:
VA Snippet used for refactoring: Create From Usage and Implement Interface.
If you have modified this item, you may delete it to restore the default upon next use.

a:Refactor Create From Usage Method Body (C)::
assert(!"The method or operation is not implemented.");
readme:
VA Snippet used for refactoring: Create From Usage and Implement Interface.
If you have modified this item, you may delete it to restore the default upon next use.

a:Refactor Create From Usage Method Body (Managed)::
throw gcnew System::NotImplementedException();
readme:
VA Snippet used for refactoring: Create From Usage and Implement Interface.
If you have modified this item, you may delete it to restore the default upon next use.

a:Refactor Create From Usage Method Body (Platform)::
throw ref new Platform::NotImplementedException();
readme:
VA Snippet used for refactoring: Create From Usage and Implement Interface.
If you have modified this item, you may delete it to restore the default upon next use.

a:Refactor Create From Usage Method Body (Unreal Engine Virtual Method)::
Super::$MethodName$($MethodArgs$);
throw std::logic_error("The method or operation is not implemented.");
readme:
VA Snippet used for refactoring: Create File.
If you have modified this item, you may delete it to restore the default upon next use.

a:Refactor Create Header File::
//---------------------------------------------------------------------------------
// Company Confidential (C) 2023 Wilcom Pty Ltd
//
// All rights are reserved. Reproduction or transmission in whole or in part, in
// any form or by any means, electronic, mechanical or otherwise, is prohibited
// without the prior written permission of the copyright owner.
//---------------------------------------------------------------------------------

#pragma once

$body$$end$


readme:
VA Snippet used for refactoring: Change Signature, Create Implementation, and Move Implementation to Source File.
If you have modified this item, you may delete it to restore the default upon next use.

a:Refactor Create Implementation::
//---------------------------------------------------------------------------------
$SymbolType$ $SymbolContext$($ParameterList$) $MethodQualifier$
//---------------------------------------------------------------------------------
{
	$end$$MethodBody$
}


readme:
VA Snippet used for refactoring: Move Implementation to Source File.
If you have modified this item, you may delete it to restore the default upon next use.

a:Refactor Create Implementation (defaulted)::

$SymbolType$ $SymbolContext$($ParameterList$) = default;


readme:
VA Snippet used for Create Implementation refactoring when used on member variables.
If you have modified this item, you may delete it to restore the default upon next use.

a:Refactor Create Implementation for Member::

$SymbolType$ $SymbolContext$;


readme:
VA Snippet used for Create Implementation refactoring when used on member variables and the target is a header file.
If you have modified this item, you may delete it to restore the default upon next use.

a:Refactor Create Implementation for Member (header file)::

__declspec(selectany) $SymbolType$ $SymbolContext$;


readme:
VA Snippet used for Create Implementation to define the body for the _Validate UE server validation method.
If you have modified this item, you may delete it to restore the default upon next use.

a:Refactor Create Implementation Method Body (Unreal Engine _Validate Method)::
return true;

readme:
VA Snippet used for refactoring: Create File.
If you have modified this item, you may delete it to restore the default upon next use.

a:Refactor Create Source File::
//---------------------------------------------------------------------------------
// Company Confidential (C) 2023 Wilcom Pty Ltd
//
// All rights are reserved. Reproduction or transmission in whole or in part, in
// any form or by any means, electronic, mechanical or otherwise, is prohibited
// without the prior written permission of the copyright owner.
//---------------------------------------------------------------------------------

#include "$FILE_BASE$.h"

$body$$end$


readme:
VA Snippet used for refactoring.
If you have modified this item, you may delete it to restore the default upon next use.

a:Refactor Document Method::
//************************************
// Method:    $SymbolName$
// FullName:  $SymbolContext$
// Access:    $SymbolVirtual$$SymbolPrivileges$$SymbolStatic$
// Returns:   $SymbolType$
// Qualifier: $MethodQualifier$
// Parameter: $MethodArg$
//************************************

readme:
VA Snippet used for refactoring.
If you have modified this item, you may delete it to restore the default upon next use.

a:Refactor Encapsulate Field::
	$end$$SymbolType$ $GeneratedPropertyName$() const { return $SymbolName$; }
	void $GeneratedPropertyName$($SymbolType$ val) { $SymbolName$ = val; }

readme:
VA Snippet used for refactoring.
If you have modified this item, you may delete it to restore the default upon next use.

a:Refactor Extract Method::

$end$$SymbolType$ $SymbolContext$($ParameterList$) $MethodQualifier$
{
	$MethodBody$
}


