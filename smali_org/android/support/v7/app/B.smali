.class public Landroid/support/v7/app/B;
.super Landroid/app/Dialog;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/app/l;


# instance fields
.field private a:Landroid/support/v7/app/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4

    .prologue
    .line 42
    .line 1148
    if-nez p2, :cond_0

    .line 1150
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1151
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/appcompat/R$attr;->dialogTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1152
    iget p2, v0, Landroid/util/TypedValue;->resourceId:I

    .line 42
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 48
    invoke-virtual {p0}, Landroid/support/v7/app/B;->a()Landroid/support/v7/app/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/m;->a(Landroid/os/Bundle;)V

    .line 49
    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/app/m;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Landroid/support/v7/app/B;->a:Landroid/support/v7/app/m;

    if-nez v0, :cond_0

    .line 142
    invoke-static {p0, p0}, Landroid/support/v7/app/m;->a(Landroid/app/Dialog;Landroid/support/v7/app/l;)Landroid/support/v7/app/m;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/B;->a:Landroid/support/v7/app/m;

    .line 144
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/B;->a:Landroid/support/v7/app/m;

    return-object v0
.end method

.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 103
    invoke-virtual {p0}, Landroid/support/v7/app/B;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/m;->b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    return-void
.end method

.method public invalidateOptionsMenu()V
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Landroid/support/v7/app/B;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->f()V

    .line 135
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Landroid/support/v7/app/B;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->h()V

    .line 59
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Landroid/support/v7/app/B;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->a(Landroid/os/Bundle;)V

    .line 61
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 109
    invoke-virtual {p0}, Landroid/support/v7/app/B;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/m;->d()V

    .line 110
    return-void
.end method

.method public setContentView(I)V
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Landroid/support/v7/app/B;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->a(I)V

    .line 77
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/support/v7/app/B;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->a(Landroid/view/View;)V

    .line 82
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0}, Landroid/support/v7/app/B;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/m;->a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 87
    return-void
.end method

.method public setTitle(I)V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(I)V

    .line 98
    invoke-virtual {p0}, Landroid/support/v7/app/B;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/app/B;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/app/m;->a(Ljava/lang/CharSequence;)V

    .line 99
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0}, Landroid/support/v7/app/B;->a()Landroid/support/v7/app/m;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/app/m;->a(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method
