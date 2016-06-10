.class public Lcom/activeandroid/app/Application;
.super Landroid/app/Application;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 24
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 25
    invoke-static {p0}, Lcom/activeandroid/ActiveAndroid;->initialize(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public onTerminate()V
    .locals 0

    .prologue
    .line 30
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 31
    invoke-static {}, Lcom/activeandroid/ActiveAndroid;->dispose()V

    .line 32
    return-void
.end method
