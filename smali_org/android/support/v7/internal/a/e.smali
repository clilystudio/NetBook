.class public Landroid/support/v7/internal/a/e;
.super Landroid/support/v7/app/a;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/widget/j;


# static fields
.field private static final e:Z


# instance fields
.field private A:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private B:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

.field a:Landroid/support/v7/internal/a/i;

.field b:Landroid/support/v7/b/a;

.field c:Landroid/support/v7/b/b;

.field d:Z

.field private f:Landroid/content/Context;

.field private g:Landroid/content/Context;

.field private h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

.field private i:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private j:Landroid/support/v7/internal/widget/D;

.field private k:Landroid/support/v7/internal/widget/ActionBarContextView;

.field private l:Landroid/support/v7/internal/widget/ActionBarContainer;

.field private m:Landroid/view/View;

.field private n:Z

.field private o:Z

.field private p:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/K;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:Z

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Landroid/support/v7/internal/view/h;

.field private y:Z

.field private z:Landroid/support/v4/view/ViewPropertyAnimatorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 75
    const-class v0, Landroid/support/v7/internal/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/internal/a/e;->e:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 172
    invoke-direct {p0}, Landroid/support/v7/app/a;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/a/e;->p:Ljava/util/ArrayList;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/a/e;->s:I

    .line 122
    iput-boolean v1, p0, Landroid/support/v7/internal/a/e;->t:Z

    .line 127
    iput-boolean v1, p0, Landroid/support/v7/internal/a/e;->w:Z

    .line 135
    new-instance v0, Landroid/support/v7/internal/a/f;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/a/f;-><init>(Landroid/support/v7/internal/a/e;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/e;->z:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 155
    new-instance v0, Landroid/support/v7/internal/a/g;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/a/g;-><init>(Landroid/support/v7/internal/a/e;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/e;->A:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 163
    new-instance v0, Landroid/support/v7/internal/a/h;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/a/h;-><init>(Landroid/support/v7/internal/a/e;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/e;->B:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 174
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 176
    invoke-direct {p0, v0}, Landroid/support/v7/internal/a/e;->b(Landroid/view/View;)V

    .line 177
    if-nez p2, :cond_0

    .line 178
    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/a/e;->m:Landroid/view/View;

    .line 180
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 182
    invoke-direct {p0}, Landroid/support/v7/app/a;-><init>()V

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/internal/a/e;->p:Ljava/util/ArrayList;

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/internal/a/e;->s:I

    .line 122
    iput-boolean v1, p0, Landroid/support/v7/internal/a/e;->t:Z

    .line 127
    iput-boolean v1, p0, Landroid/support/v7/internal/a/e;->w:Z

    .line 135
    new-instance v0, Landroid/support/v7/internal/a/f;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/a/f;-><init>(Landroid/support/v7/internal/a/e;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/e;->z:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 155
    new-instance v0, Landroid/support/v7/internal/a/g;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/a/g;-><init>(Landroid/support/v7/internal/a/e;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/e;->A:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 163
    new-instance v0, Landroid/support/v7/internal/a/h;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/a/h;-><init>(Landroid/support/v7/internal/a/e;)V

    iput-object v0, p0, Landroid/support/v7/internal/a/e;->B:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    .line 184
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/a/e;->b(Landroid/view/View;)V

    .line 185
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/a/e;Landroid/support/v7/internal/view/h;)Landroid/support/v7/internal/view/h;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/a/e;->x:Landroid/support/v7/internal/view/h;

    return-object v0
.end method

.method private a(II)V
    .locals 4

    .prologue
    .line 461
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/D;->n()I

    move-result v0

    .line 462
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 463
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v7/internal/a/e;->n:Z

    .line 465
    :cond_0
    iget-object v1, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v0, v3

    or-int/2addr v0, v2

    invoke-interface {v1, v0}, Landroid/support/v7/internal/widget/D;->c(I)V

    .line 466
    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/a/e;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/support/v7/internal/a/e;->t:Z

    return v0
.end method

.method static synthetic a(ZZZ)Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/support/v7/internal/a/e;->b(ZZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/support/v7/internal/a/e;)Landroid/view/View;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->m:Landroid/view/View;

    return-object v0
.end method

.method private b(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 197
    sget v0, Landroid/support/v7/appcompat/R$id;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iput-object v0, p0, Landroid/support/v7/internal/a/e;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    .line 198
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Landroid/support/v7/internal/widget/j;)V

    .line 201
    :cond_0
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2243
    instance-of v3, v0, Landroid/support/v7/internal/widget/D;

    if-eqz v3, :cond_2

    .line 2244
    check-cast v0, Landroid/support/v7/internal/widget/D;

    .line 201
    :goto_0
    iput-object v0, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    .line 202
    sget v0, Landroid/support/v7/appcompat/R$id;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContextView;

    iput-object v0, p0, Landroid/support/v7/internal/a/e;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 204
    sget v0, Landroid/support/v7/appcompat/R$id;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/internal/a/e;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 207
    sget v0, Landroid/support/v7/appcompat/R$id;->split_action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/widget/ActionBarContainer;

    iput-object v0, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    .line 209
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/a/e;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/internal/a/e;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-nez v0, :cond_5

    .line 210
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " can only be used with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2245
    :cond_2
    instance-of v3, v0, Landroid/support/v7/widget/Toolbar;

    if-eqz v3, :cond_3

    .line 2246
    check-cast v0, Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->o()Landroid/support/v7/internal/widget/D;

    move-result-object v0

    goto :goto_0

    .line 2248
    :cond_3
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t make a decor toolbar out of "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    const-string v0, "null"

    goto :goto_1

    .line 214
    :cond_5
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/D;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/a/e;->f:Landroid/content/Context;

    .line 215
    iput v2, p0, Landroid/support/v7/internal/a/e;->q:I

    .line 219
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/D;->n()I

    move-result v0

    .line 220
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_7

    move v0, v1

    .line 221
    :goto_2
    if-eqz v0, :cond_6

    .line 222
    iput-boolean v1, p0, Landroid/support/v7/internal/a/e;->n:Z

    .line 225
    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/sdk/b/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/b/b;

    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lcom/alipay/sdk/b/b;->g()Z

    .line 227
    invoke-virtual {v0}, Lcom/alipay/sdk/b/b;->e()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/a/e;->j(Z)V

    .line 229
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->f:Landroid/content/Context;

    const/4 v3, 0x0

    sget-object v4, Landroid/support/v7/appcompat/R$styleable;->ActionBar:[I

    sget v5, Landroid/support/v7/appcompat/R$attr;->actionBarStyle:I

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    sget v3, Landroid/support/v7/appcompat/R$styleable;->ActionBar_hideOnContentScroll:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2715
    iget-object v3, p0, Landroid/support/v7/internal/a/e;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->a()Z

    move-result v3

    if-nez v3, :cond_8

    .line 2716
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    move v0, v2

    .line 220
    goto :goto_2

    .line 2719
    :cond_8
    iput-boolean v1, p0, Landroid/support/v7/internal/a/e;->d:Z

    .line 2720
    iget-object v3, p0, Landroid/support/v7/internal/a/e;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 235
    :cond_9
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ActionBar_elevation:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    .line 236
    if-eqz v1, :cond_a

    .line 237
    int-to-float v1, v1

    .line 3255
    iget-object v2, p0, Landroid/support/v7/internal/a/e;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 3256
    iget-object v2, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v2, :cond_a

    .line 3257
    iget-object v2, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2, v1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 239
    :cond_a
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 240
    return-void
.end method

.method private static b(ZZZ)Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 744
    if-eqz p2, :cond_1

    .line 749
    :cond_0
    :goto_0
    return v0

    .line 746
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 747
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Landroid/support/v7/internal/a/e;)Landroid/support/v7/internal/widget/ActionBarContainer;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/internal/a/e;)Landroid/support/v7/internal/widget/ActionBarContainer;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic e(Landroid/support/v7/internal/a/e;)I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Landroid/support/v7/internal/a/e;->q:I

    return v0
.end method

.method static synthetic f(Landroid/support/v7/internal/a/e;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic g(Landroid/support/v7/internal/a/e;)Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic h(Landroid/support/v7/internal/a/e;)Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Landroid/support/v7/internal/a/e;->u:Z

    return v0
.end method

.method static synthetic i(Landroid/support/v7/internal/a/e;)Landroid/support/v7/internal/widget/ActionBarContextView;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic j(Landroid/support/v7/internal/a/e;)Landroid/support/v7/internal/widget/D;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    return-object v0
.end method

.method private j(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 271
    iput-boolean p1, p0, Landroid/support/v7/internal/a/e;->r:Z

    .line 273
    iget-boolean v0, p0, Landroid/support/v7/internal/a/e;->r:Z

    if-nez v0, :cond_0

    .line 274
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    invoke-interface {v0, v3}, Landroid/support/v7/internal/widget/D;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    .line 275
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    .line 3495
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/D;->o()I

    move-result v0

    .line 280
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 291
    :goto_1
    iget-object v4, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    iget-boolean v3, p0, Landroid/support/v7/internal/a/e;->r:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_2

    move v3, v1

    :goto_2
    invoke-interface {v4, v3}, Landroid/support/v7/internal/widget/D;->a(Z)V

    .line 292
    iget-object v3, p0, Landroid/support/v7/internal/a/e;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    iget-boolean v4, p0, Landroid/support/v7/internal/a/e;->r:Z

    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    :goto_3
    invoke-virtual {v3, v1}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    .line 293
    return-void

    .line 277
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTabContainer(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    .line 278
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    invoke-interface {v0, v3}, Landroid/support/v7/internal/widget/D;->a(Landroid/support/v7/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 280
    goto :goto_1

    :cond_2
    move v3, v2

    .line 291
    goto :goto_2

    :cond_3
    move v1, v2

    .line 292
    goto :goto_3
.end method

.method static synthetic k(Landroid/support/v7/internal/a/e;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->f:Landroid/content/Context;

    return-object v0
.end method

.method private k(Z)V
    .locals 8

    .prologue
    const/4 v2, 0x2

    const/high16 v7, 0x3f800000

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 755
    iget-boolean v0, p0, Landroid/support/v7/internal/a/e;->u:Z

    iget-boolean v1, p0, Landroid/support/v7/internal/a/e;->v:Z

    invoke-static {v6, v0, v1}, Landroid/support/v7/internal/a/e;->b(ZZZ)Z

    move-result v0

    .line 758
    if-eqz v0, :cond_9

    .line 759
    iget-boolean v0, p0, Landroid/support/v7/internal/a/e;->w:Z

    if-nez v0, :cond_5

    .line 760
    iput-boolean v5, p0, Landroid/support/v7/internal/a/e;->w:Z

    .line 3772
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->x:Landroid/support/v7/internal/view/h;

    if-eqz v0, :cond_0

    .line 3773
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->x:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->b()V

    .line 3775
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v6}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 3777
    iget v0, p0, Landroid/support/v7/internal/a/e;->s:I

    if-nez v0, :cond_6

    sget-boolean v0, Landroid/support/v7/internal/a/e;->e:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Landroid/support/v7/internal/a/e;->y:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_6

    .line 3780
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 3781
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 3782
    if-eqz p1, :cond_2

    .line 3783
    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 3784
    iget-object v2, p0, Landroid/support/v7/internal/a/e;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 3785
    aget v1, v1, v5

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 3787
    :cond_2
    iget-object v1, p0, Landroid/support/v7/internal/a/e;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v1, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 3788
    new-instance v1, Landroid/support/v7/internal/view/h;

    invoke-direct {v1}, Landroid/support/v7/internal/view/h;-><init>()V

    .line 3789
    iget-object v2, p0, Landroid/support/v7/internal/a/e;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 3790
    iget-object v3, p0, Landroid/support/v7/internal/a/e;->B:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 3791
    invoke-virtual {v1, v2}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/h;

    .line 3792
    iget-boolean v2, p0, Landroid/support/v7/internal/a/e;->t:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/support/v7/internal/a/e;->m:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 3793
    iget-object v2, p0, Landroid/support/v7/internal/a/e;->m:Landroid/view/View;

    invoke-static {v2, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 3794
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->m:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/h;

    .line 3796
    :cond_3
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_4

    iget v0, p0, Landroid/support/v7/internal/a/e;->q:I

    if-ne v0, v5, :cond_4

    .line 3797
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    iget-object v2, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 3798
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v6}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 3799
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/h;

    .line 3801
    :cond_4
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->f:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/view/animation/Interpolator;)Landroid/support/v7/internal/view/h;

    .line 3803
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/internal/view/h;->a(J)Landroid/support/v7/internal/view/h;

    .line 3811
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->A:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v7/internal/view/h;

    .line 3812
    iput-object v1, p0, Landroid/support/v7/internal/a/e;->x:Landroid/support/v7/internal/view/h;

    .line 3813
    invoke-virtual {v1}, Landroid/support/v7/internal/view/h;->a()V

    .line 3827
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_5

    .line 3828
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 3864
    :cond_5
    :goto_1
    return-void

    .line 3815
    :cond_6
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v7}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 3816
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 3817
    iget-boolean v0, p0, Landroid/support/v7/internal/a/e;->t:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/support/v7/internal/a/e;->m:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 3818
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->m:Landroid/view/View;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 3820
    :cond_7
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_8

    iget v0, p0, Landroid/support/v7/internal/a/e;->q:I

    if-ne v0, v5, :cond_8

    .line 3821
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v7}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 3822
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 3823
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v6}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 3825
    :cond_8
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->A:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto :goto_0

    .line 764
    :cond_9
    iget-boolean v0, p0, Landroid/support/v7/internal/a/e;->w:Z

    if-eqz v0, :cond_5

    .line 765
    iput-boolean v6, p0, Landroid/support/v7/internal/a/e;->w:Z

    .line 3833
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->x:Landroid/support/v7/internal/view/h;

    if-eqz v0, :cond_a

    .line 3834
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->x:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->b()V

    .line 3837
    :cond_a
    iget v0, p0, Landroid/support/v7/internal/a/e;->s:I

    if-nez v0, :cond_f

    sget-boolean v0, Landroid/support/v7/internal/a/e;->e:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Landroid/support/v7/internal/a/e;->y:Z

    if-nez v0, :cond_b

    if-eqz p1, :cond_f

    .line 3839
    :cond_b
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v7}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 3840
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, v5}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 3841
    new-instance v1, Landroid/support/v7/internal/view/h;

    invoke-direct {v1}, Landroid/support/v7/internal/view/h;-><init>()V

    .line 3842
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    .line 3843
    if-eqz p1, :cond_c

    .line 3844
    new-array v2, v2, [I

    fill-array-data v2, :array_1

    .line 3845
    iget-object v3, p0, Landroid/support/v7/internal/a/e;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 3846
    aget v2, v2, v5

    int-to-float v2, v2

    sub-float/2addr v0, v2

    .line 3848
    :cond_c
    iget-object v2, p0, Landroid/support/v7/internal/a/e;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    .line 3849
    iget-object v3, p0, Landroid/support/v7/internal/a/e;->B:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 3850
    invoke-virtual {v1, v2}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/h;

    .line 3851
    iget-boolean v2, p0, Landroid/support/v7/internal/a/e;->t:Z

    if-eqz v2, :cond_d

    iget-object v2, p0, Landroid/support/v7/internal/a/e;->m:Landroid/view/View;

    if-eqz v2, :cond_d

    .line 3852
    iget-object v2, p0, Landroid/support/v7/internal/a/e;->m:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/h;

    .line 3854
    :cond_d
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v0

    if-nez v0, :cond_e

    .line 3855
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0, v7}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 3856
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Landroid/support/v7/internal/view/h;

    .line 3858
    :cond_e
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->f:Landroid/content/Context;

    const v2, 0x10a0005

    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/view/animation/Interpolator;)Landroid/support/v7/internal/view/h;

    .line 3860
    const-wide/16 v2, 0xfa

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/internal/view/h;->a(J)Landroid/support/v7/internal/view/h;

    .line 3861
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->z:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/h;->a(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v7/internal/view/h;

    .line 3862
    iput-object v1, p0, Landroid/support/v7/internal/a/e;->x:Landroid/support/v7/internal/view/h;

    .line 3863
    invoke-virtual {v1}, Landroid/support/v7/internal/view/h;->a()V

    goto/16 :goto_1

    .line 3865
    :cond_f
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->z:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    goto/16 :goto_1

    .line 3783
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data

    .line 3844
    :array_1
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final a(Landroid/support/v7/b/b;)Landroid/support/v7/b/a;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 503
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->a:Landroid/support/v7/internal/a/i;

    if-eqz v0, :cond_0

    .line 504
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->a:Landroid/support/v7/internal/a/i;

    invoke-virtual {v0}, Landroid/support/v7/internal/a/i;->c()V

    .line 507
    :cond_0
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    .line 508
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->e()V

    .line 509
    new-instance v0, Landroid/support/v7/internal/a/i;

    iget-object v1, p0, Landroid/support/v7/internal/a/e;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/support/v7/internal/a/i;-><init>(Landroid/support/v7/internal/a/e;Landroid/content/Context;Landroid/support/v7/b/b;)V

    .line 510
    invoke-virtual {v0}, Landroid/support/v7/internal/a/i;->e()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 511
    invoke-virtual {v0}, Landroid/support/v7/internal/a/i;->d()V

    .line 512
    iget-object v1, p0, Landroid/support/v7/internal/a/e;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(Landroid/support/v7/b/a;)V

    .line 513
    invoke-virtual {p0, v3}, Landroid/support/v7/internal/a/e;->i(Z)V

    .line 514
    iget-object v1, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/internal/a/e;->q:I

    if-ne v1, v3, :cond_1

    .line 516
    iget-object v1, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 517
    iget-object v1, p0, Landroid/support/v7/internal/a/e;->l:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 518
    iget-object v1, p0, Landroid/support/v7/internal/a/e;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    .line 519
    iget-object v1, p0, Landroid/support/v7/internal/a/e;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 523
    :cond_1
    iget-object v1, p0, Landroid/support/v7/internal/a/e;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 524
    iput-object v0, p0, Landroid/support/v7/internal/a/e;->a:Landroid/support/v7/internal/a/i;

    .line 527
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a()Landroid/view/View;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/D;->p()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)V
    .locals 4

    .prologue
    .line 367
    invoke-virtual {p0}, Landroid/support/v7/internal/a/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0300ba

    iget-object v2, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    invoke-interface {v2}, Landroid/support/v7/internal/widget/D;->a()Landroid/view/ViewGroup;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/a/e;->a(Landroid/view/View;)V

    .line 369
    return-void
.end method

.method public final a(Landroid/content/res/Configuration;)V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/sdk/b/b;->a(Landroid/content/Context;)Lcom/alipay/sdk/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/b/b;->e()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/internal/a/e;->j(Z)V

    .line 268
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->i:Landroid/support/v7/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 470
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1249
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/D;->a(Landroid/view/View;)V

    .line 1250
    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/D;->b(Ljava/lang/CharSequence;)V

    .line 442
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    .line 378
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Landroid/support/v7/internal/a/e;->a(II)V

    .line 379
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/D;->n()I

    move-result v0

    return v0
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 328
    iput p1, p0, Landroid/support/v7/internal/a/e;->s:I

    .line 329
    return-void
.end method

.method public final b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/widget/D;->a(Ljava/lang/CharSequence;)V

    .line 447
    return-void
.end method

.method public final b(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 383
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/support/v7/internal/a/e;->a(II)V

    .line 384
    return-void

    .line 383
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Landroid/content/Context;
    .locals 4

    .prologue
    .line 888
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->g:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 889
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 890
    iget-object v1, p0, Landroid/support/v7/internal/a/e;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 891
    sget v2, Landroid/support/v7/appcompat/R$attr;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 892
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    .line 894
    if-eqz v0, :cond_1

    .line 895
    new-instance v1, Landroid/view/ContextThemeWrapper;

    iget-object v2, p0, Landroid/support/v7/internal/a/e;->f:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Landroid/support/v7/internal/a/e;->g:Landroid/content/Context;

    .line 900
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->g:Landroid/content/Context;

    return-object v0

    .line 897
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->f:Landroid/content/Context;

    iput-object v0, p0, Landroid/support/v7/internal/a/e;->g:Landroid/content/Context;

    goto :goto_0
.end method

.method public final c(Z)V
    .locals 2

    .prologue
    .line 388
    const/4 v0, 0x0

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Landroid/support/v7/internal/a/e;->a(II)V

    .line 389
    return-void
.end method

.method public final d(Z)V
    .locals 1

    .prologue
    const/16 v0, 0x10

    .line 393
    invoke-direct {p0, v0, v0}, Landroid/support/v7/internal/a/e;->a(II)V

    .line 394
    return-void
.end method

.method public final e(Z)V
    .locals 1

    .prologue
    .line 1357
    iget-boolean v0, p0, Landroid/support/v7/internal/a/e;->n:Z

    if-nez v0, :cond_0

    .line 1358
    invoke-virtual {p0, p1}, Landroid/support/v7/internal/a/e;->b(Z)V

    .line 1360
    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/D;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    invoke-interface {v0}, Landroid/support/v7/internal/widget/D;->d()V

    .line 944
    const/4 v0, 0x1

    .line 946
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 682
    iget-boolean v0, p0, Landroid/support/v7/internal/a/e;->u:Z

    if-eqz v0, :cond_0

    .line 683
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/internal/a/e;->u:Z

    .line 684
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/internal/a/e;->k(Z)V

    .line 686
    :cond_0
    return-void
.end method

.method public final f(Z)V
    .locals 1

    .prologue
    .line 339
    iput-boolean p1, p0, Landroid/support/v7/internal/a/e;->y:Z

    .line 340
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/a/e;->x:Landroid/support/v7/internal/view/h;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->x:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->b()V

    .line 343
    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 707
    iget-boolean v0, p0, Landroid/support/v7/internal/a/e;->u:Z

    if-nez v0, :cond_0

    .line 708
    iput-boolean v1, p0, Landroid/support/v7/internal/a/e;->u:Z

    .line 709
    invoke-direct {p0, v1}, Landroid/support/v7/internal/a/e;->k(Z)V

    .line 711
    :cond_0
    return-void
.end method

.method public final g(Z)V
    .locals 3

    .prologue
    .line 354
    iget-boolean v0, p0, Landroid/support/v7/internal/a/e;->o:Z

    if-ne p1, v0, :cond_1

    .line 363
    :cond_0
    return-void

    .line 357
    :cond_1
    iput-boolean p1, p0, Landroid/support/v7/internal/a/e;->o:Z

    .line 359
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->p:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 360
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 361
    iget-object v2, p0, Landroid/support/v7/internal/a/e;->p:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->x:Landroid/support/v7/internal/view/h;

    if-eqz v0, :cond_0

    .line 931
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->x:Landroid/support/v7/internal/view/h;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/h;->b()V

    .line 932
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/internal/a/e;->x:Landroid/support/v7/internal/view/h;

    .line 934
    :cond_0
    return-void
.end method

.method public final h(Z)V
    .locals 0

    .prologue
    .line 660
    iput-boolean p1, p0, Landroid/support/v7/internal/a/e;->t:Z

    .line 661
    return-void
.end method

.method public final i(Z)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 876
    if-eqz p1, :cond_2

    .line 4672
    iget-boolean v0, p0, Landroid/support/v7/internal/a/e;->v:Z

    if-nez v0, :cond_1

    .line 4673
    iput-boolean v3, p0, Landroid/support/v7/internal/a/e;->v:Z

    .line 4674
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 4675
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v3}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 4677
    :cond_0
    invoke-direct {p0, v2}, Landroid/support/v7/internal/a/e;->k(Z)V

    .line 882
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/support/v7/internal/a/e;->j:Landroid/support/v7/internal/widget/D;

    if-eqz p1, :cond_4

    move v0, v1

    :goto_1
    invoke-interface {v3, v0}, Landroid/support/v7/internal/widget/D;->d(I)V

    .line 883
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->k:Landroid/support/v7/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_5

    :goto_2
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContextView;->a(I)V

    .line 885
    return-void

    .line 4697
    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/internal/a/e;->v:Z

    if-eqz v0, :cond_1

    .line 4698
    iput-boolean v2, p0, Landroid/support/v7/internal/a/e;->v:Z

    .line 4699
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_3

    .line 4700
    iget-object v0, p0, Landroid/support/v7/internal/a/e;->h:Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 4702
    :cond_3
    invoke-direct {p0, v2}, Landroid/support/v7/internal/a/e;->k(Z)V

    goto :goto_0

    :cond_4
    move v0, v2

    .line 882
    goto :goto_1

    :cond_5
    move v2, v1

    .line 883
    goto :goto_2
.end method
