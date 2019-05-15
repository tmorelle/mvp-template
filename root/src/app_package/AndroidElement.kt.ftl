package ${kotlinEscapedPackageName}

<#if kindOfElement == "Activity">
import android.os.Bundle
</#if>
import com.adeo.android.app.core.di.Base${kindOfElement}
<#if applicationPackage??>
import ${applicationPackage}.R
</#if>

class ${featureName}${kindOfElement}: Base${kindOfElement}<${featureName}${kindOfElement}Presenter>(), ${featureName}${kindOfElement}View {
	<#if kindOfElement == "Fragment" || kindOfElement == "ChildFragment">
	companion object {
		@JvmStatic
		fun newInstance(): ${featureName}${kindOfElement} = ${featureName}${kindOfElement}()
	}

	override fun getLayoutRes(): Int = R.layout.${kindOfElement?lower_case}_${featureName?lower_case}
	</#if>

	<#if kindOfElement == "Activity">
	override fun getContainerFragmentId(): Int = 0

	override fun onCreate(savedInstanceState: Bundle?) {
		super.onCreate(savedInstanceState)
		setContentView(R.layout.${kindOfElement?lower_case}_${featureName?lower_case})
	}
	</#if>
}