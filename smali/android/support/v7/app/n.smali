.class abstract Landroid/support/v7/app/n;
.super Landroid/support/v7/app/m;
.source "SourceFile"


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/view/Window;

.field final c:Landroid/view/Window$Callback;

.field final d:Landroid/support/v7/app/l;

.field e:Z

.field f:Z

.field g:Z

.field h:Z

.field i:Z

.field private j:Landroid/view/Window$Callback;

.field private k:Landroid/support/v7/app/a;

.field private l:Landroid/view/MenuInflater;

.field private m:Ljava/lang/CharSequence;

.field private n:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/l;)V
    .locals 2

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/support/v7/app/m;-><init>()V

    .line 66
    iput-object p1, p0, Landroid/support/v7/app/n;->a:Landroid/content/Context;

    .line 67
    iput-object p2, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window;

    .line 68
    iput-object p3, p0, Landroid/support/v7/app/n;->d:Landroid/support/v7/app/l;

    .line 70
    iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window$Callback;

    .line 71
    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/support/v7/app/o;

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "AppCompat has already installed itself into the Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window$Callback;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/n;->a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/n;->j:Landroid/view/Window$Callback;

    .line 77
    iget-object v0, p0, Landroid/support/v7/app/n;->b:Landroid/view/Window;

    iget-object v1, p0, Landroid/support/v7/app/n;->j:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 78
    return-void
.end method


# virtual methods
.method public final a()Landroid/support/v7/app/a;
    .locals 1

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/support/v7/app/n;->e:Z

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Landroid/support/v7/app/n;->k:Landroid/support/v7/app/a;

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/support/v7/app/n;->i()Landroid/support/v7/app/a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/n;->k:Landroid/support/v7/app/a;

    .line 99
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/app/n;->k:Landroid/support/v7/app/a;

    return-object v0

    .line 95
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/n;->k:Landroid/support/v7/app/a;

    instance-of v0, v0, Landroid/support/v7/internal/a/e;

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/app/n;->k:Landroid/support/v7/app/a;

    goto :goto_0
.end method

.method abstract a(Landroid/support/v7/b/b;)Landroid/support/v7/b/a;
.end method

.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 83
    new-instance v0, Landroid/support/v7/app/o;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/o;-><init>(Landroid/support/v7/app/n;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 120
    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/content/Context;

    sget-object v1, Landroid/support/v7/appcompat/R$styleable;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 122
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Theme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Theme_windowActionBar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 129
    iput-boolean v3, p0, Landroid/support/v7/app/n;->e:Z

    .line 131
    :cond_1
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Theme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 132
    iput-boolean v3, p0, Landroid/support/v7/app/n;->f:Z

    .line 134
    :cond_2
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Theme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 135
    iput-boolean v3, p0, Landroid/support/v7/app/n;->g:Z

    .line 137
    :cond_3
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Theme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/n;->h:Z

    .line 138
    sget v1, Landroid/support/v7/appcompat/R$styleable;->Theme_windowNoTitle:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/n;->i:Z

    .line 139
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 140
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Landroid/support/v7/app/n;->m:Ljava/lang/CharSequence;

    .line 239
    invoke-virtual {p0, p1}, Landroid/support/v7/app/n;->b(Ljava/lang/CharSequence;)V

    .line 240
    return-void
.end method

.method abstract a(ILandroid/view/KeyEvent;)Z
.end method

.method abstract a(Landroid/view/KeyEvent;)Z
.end method

.method public final b()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Landroid/support/v7/app/n;->l:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 113
    new-instance v0, Landroid/support/v7/internal/view/e;

    invoke-virtual {p0}, Landroid/support/v7/app/n;->k()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/n;->l:Landroid/view/MenuInflater;

    .line 115
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/n;->l:Landroid/view/MenuInflater;

    return-object v0
.end method

.method abstract b(Ljava/lang/CharSequence;)V
.end method

.method abstract c(I)Z
.end method

.method abstract d(I)Z
.end method

.method public final g()V
    .locals 1

    .prologue
    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/n;->n:Z

    .line 215
    return-void
.end method

.method abstract i()Landroid/support/v7/app/a;
.end method

.method final j()Landroid/support/v7/app/a;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/v7/app/n;->k:Landroid/support/v7/app/a;

    return-object v0
.end method

.method final k()Landroid/content/Context;
    .locals 2

    .prologue
    .line 157
    const/4 v0, 0x0

    .line 160
    invoke-virtual {p0}, Landroid/support/v7/app/n;->a()Landroid/support/v7/app/a;

    move-result-object v1

    .line 161
    if-eqz v1, :cond_0

    .line 162
    invoke-virtual {v1}, Landroid/support/v7/app/a;->c()Landroid/content/Context;

    move-result-object v0

    .line 165
    :cond_0
    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Landroid/support/v7/app/n;->a:Landroid/content/Context;

    .line 168
    :cond_1
    return-object v0
.end method

.method final l()Z
    .locals 1

    .prologue
    .line 229
    iget-boolean v0, p0, Landroid/support/v7/app/n;->n:Z

    return v0
.end method

.method final m()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 247
    iget-object v0, p0, Landroid/support/v7/app/n;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 250
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/n;->m:Ljava/lang/CharSequence;

    goto :goto_0
.end method
