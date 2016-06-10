.class public Landroid/support/v7/app/AppCompatActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/TaskStackBuilder$SupportParentable;
.implements Landroid/support/v7/app/l;


# instance fields
.field private a:Landroid/support/v7/app/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method

.method private b()Z
    .locals 2

    .prologue
    .line 332
    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 334
    if-eqz v0, :cond_1

    .line 1386
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->shouldUpRecreateTask(Landroid/app/Activity;Landroid/content/Intent;)Z

    move-result v1

    .line 335
    if-eqz v1, :cond_0

    .line 336
    invoke-static {p0}, Landroid/support/v4/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/support/v4/app/TaskStackBuilder;

    move-result-object v0

    .line 2287
    invoke-virtual {v0, p0}, Landroid/support/v4/app/TaskStackBuilder;->addParentStack(Landroid/app/Activity;)Landroid/support/v4/app/TaskStackBuilder;

    .line 339
    invoke-virtual {v0}, Landroid/support/v4/app/TaskStackBuilder;->startActivities()V

    .line 342
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/ActivityCompat;->finishAffinity(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    const/4 v0, 0x1

    .line 355
    :goto_1
    return v0

    .line 346
    :catch_0
    move-exception v0

    invoke-virtual {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    goto :goto_0

    .line 2402
    :cond_0
    invoke-static {p0, v0}, Landroid/support/v4/app/NavUtils;->navigateUpTo(Landroid/app/Activity;Landroid/content/Intent;)V

    goto :goto_0

    .line 355
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private c()Landroid/support/v7/app/m;
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->a:Landroid/support/v7/app/m;

    if-nez v0, :cond_0

    .line 429
    invoke-static {p0, p0}, Landroid/support/v7/app/m;->a(Landroid/app/Activity;Landroid/support/v7/app/l;)Landroid/support/v7/app/m;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->a:Landroid/support/v7/app/m;

    .line 431
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/AppCompatActivity;->a:Landroid/support/v7/app/m;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/support/v7/app/a;
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->a()Landroid/support/v7/app/a;

    move-result-object v0

    return-object v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 121
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/m;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 122
    return-void
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->b()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSupportParentActivityIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 369
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->getParentActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->f()V

    .line 196
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 127
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->a(Landroid/content/res/Configuration;)V

    .line 128
    return-void
.end method

.method public onContentChanged()V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->h()V

    .line 58
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->a(Landroid/os/Bundle;)V

    .line 60
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    .line 159
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->g()V

    .line 160
    return-void
.end method

.method public final onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x1

    .line 153
    :goto_0
    return v0

    .line 1077
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->a()Landroid/support/v7/app/a;

    move-result-object v0

    .line 149
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    const v2, 0x102002c

    if-ne v1, v2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/app/a;->b()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 151
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->b()Z

    move-result v0

    goto :goto_0

    .line 153
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 65
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->c()V

    .line 66
    return-void
.end method

.method protected onPostResume()V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPostResume()V

    .line 139
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->e()V

    .line 140
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 132
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 133
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->d()V

    .line 134
    return-void
.end method

.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
    .locals 1

    .prologue
    .line 164
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentActivity;->onTitleChanged(Ljava/lang/CharSequence;I)V

    .line 165
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->a(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->a(I)V

    .line 107
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->a(Landroid/view/View;)V

    .line 112
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 116
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/m;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 188
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;->c()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->f()V

    .line 189
    return-void
.end method
