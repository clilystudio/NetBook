package com.clilystudio.netbook.api;

public final class ApiServiceProvider {
    private static ApiServiceProvider mInstance = null;
    private static ApiService mApiService = null;

    private ApiServiceProvider() {
    }

    public static ApiServiceProvider getInstance() {
        if (mInstance == null) {
            mInstance = new ApiServiceProvider();
        }
        return mInstance;
    }

    public static ApiService getApiService() {
        if (mApiService == null) {
            mApiService = new ApiService(UserAgentManager.getInstance());
        }
        return mApiService;
    }
}
