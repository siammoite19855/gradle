package org.gradle.plugin.devel;

import org.gradle.api.provider.Property;

import javax.inject.Inject;

public abstract class SupportedFeatures {
    public abstract Property<Boolean> getConfigurationCache();
    public abstract Property<Boolean> getIsolatedProjects();

    @Inject
    public SupportedFeatures() {
        getIsolatedProjects().convention(false);
        getConfigurationCache().convention(false);
    }
}
