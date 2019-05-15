package ${kotlinEscapedPackageName}

import dagger.Binds
import dagger.Module
import dagger.Provides
import dagger.android.ContributesAndroidInjector
import com.adeo.android.app.core.di.contract.${kindOfElement}View

/**
 TODO: Think about to include this module inside a @ContributesAndroidInjector
*/
@Module(includes = [${featureName}${kindOfElement}Module.Declarations::class])
class ${featureName}${kindOfElement}Module {
	@Provides
	fun provide${featureName}${kindOfElement}Presenter(view: ${featureName}${kindOfElement}View) = ${featureName}${kindOfElement}Presenter(view)

	@Module
	interface Declarations {
        <#if kindOfElement == "Fragment">
		@Binds fun provideFragmentView(fragment: ${featureName}${kindOfElement}): FragmentView
		@Binds fun provide${featureName}${kindOfElement}View(fragment: ${featureName}${kindOfElement}): ${featureName}${kindOfElement}View

        //Give access to child here
        <#elseif kindOfElement == "Activity">
		@Binds fun provideActivityView(activity: ${featureName}${kindOfElement}): ActivityView
		@Binds fun provide${featureName}${kindOfElement}View(activity: ${featureName}${kindOfElement}): ${featureName}${kindOfElement}View

        //Give access to child here
        <#elseif kindOfElement == "ChildFragment">
        @Binds fun provideChildFragmentView(childFragment: ${featureName}${kindOfElement}): ChildFragmentView
		@Binds fun provide${featureName}${kindOfElement}View(fragment: ${featureName}${kindOfElement}): ${featureName}${kindOfElement}View
        </#if>
	}
}