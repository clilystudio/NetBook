.class public Landroid/support/design/widget/ad;
.super Lcom/xiaomi/mistatistic/sdk/a/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Lcom/xiaomi/mistatistic/sdk/a/r",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private a:Landroid/support/v4/widget/ViewDragHelper;

.field private b:Landroid/support/design/widget/af;

.field private c:Z

.field private d:F

.field private e:I

.field private f:F

.field private g:F

.field private h:F

.field private final i:Landroid/support/v4/widget/ViewDragHelper$Callback;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000

    const/4 v1, 0x0

    .line 34
    invoke-direct {p0}, Lcom/xiaomi/mistatistic/sdk/a/r;-><init>()V

    .line 83
    iput v1, p0, Landroid/support/design/widget/ad;->d:F

    .line 86
    const/4 v0, 0x2

    iput v0, p0, Landroid/support/design/widget/ad;->e:I

    .line 87
    iput v2, p0, Landroid/support/design/widget/ad;->f:F

    .line 88
    iput v1, p0, Landroid/support/design/widget/ad;->g:F

    .line 89
    iput v2, p0, Landroid/support/design/widget/ad;->h:F

    .line 201
    new-instance v0, Landroid/support/design/widget/ae;

    invoke-direct {v0, p0}, Landroid/support/design/widget/ae;-><init>(Landroid/support/design/widget/ad;)V

    iput-object v0, p0, Landroid/support/design/widget/ad;->i:Landroid/support/v4/widget/ViewDragHelper$Callback;

    .line 331
    return-void
.end method

.method static synthetic a(FFF)F
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000

    invoke-static {v0, p1, v1}, Landroid/support/design/widget/ad;->b(FFF)F

    move-result v0

    return v0
.end method

.method static synthetic a(III)I
    .locals 1

    .prologue
    .line 34
    .line 1357
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 34
    return v0
.end method

.method static synthetic a(Landroid/support/design/widget/ad;)Landroid/support/design/widget/af;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/design/widget/ad;->b:Landroid/support/design/widget/af;

    return-object v0
.end method

.method private static b(FFF)F
    .locals 1

    .prologue
    .line 353
    invoke-static {p0, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method static synthetic b(Landroid/support/design/widget/ad;)Landroid/support/v4/widget/ViewDragHelper;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Landroid/support/design/widget/ad;->a:Landroid/support/v4/widget/ViewDragHelper;

    return-object v0
.end method

.method static synthetic c(Landroid/support/design/widget/ad;)I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Landroid/support/design/widget/ad;->e:I

    return v0
.end method

.method static synthetic d(Landroid/support/design/widget/ad;)F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Landroid/support/design/widget/ad;->f:F

    return v0
.end method

.method static synthetic e(Landroid/support/design/widget/ad;)F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Landroid/support/design/widget/ad;->g:F

    return v0
.end method

.method static synthetic f(Landroid/support/design/widget/ad;)F
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Landroid/support/design/widget/ad;->h:F

    return v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Landroid/support/design/widget/ad;->a:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/ad;->a:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(F)V
    .locals 3

    .prologue
    .line 143
    const/4 v0, 0x0

    const v1, 0x3dcccccd

    const/high16 v2, 0x3f800000

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/ad;->b(FFF)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ad;->g:F

    .line 144
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/design/widget/ad;->e:I

    .line 126
    return-void
.end method

.method public final a(Landroid/support/design/widget/af;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Landroid/support/design/widget/ad;->b:Landroid/support/design/widget/af;

    .line 116
    return-void
.end method

.method public a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 169
    invoke-static {p3}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 179
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, p2, v0, v2}, Landroid/support/design/widget/CoordinatorLayout;->a(Landroid/view/View;II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/design/widget/ad;->c:Z

    .line 184
    :cond_0
    iget-boolean v0, p0, Landroid/support/design/widget/ad;->c:Z

    if-eqz v0, :cond_2

    .line 189
    :goto_1
    return v1

    .line 173
    :pswitch_1
    iget-boolean v0, p0, Landroid/support/design/widget/ad;->c:Z

    if-eqz v0, :cond_0

    .line 174
    iput-boolean v1, p0, Landroid/support/design/widget/ad;->c:Z

    goto :goto_1

    :cond_1
    move v0, v1

    .line 179
    goto :goto_0

    .line 1324
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/ad;->a:Landroid/support/v4/widget/ViewDragHelper;

    if-nez v0, :cond_3

    .line 1325
    iget-object v0, p0, Landroid/support/design/widget/ad;->i:Landroid/support/v4/widget/ViewDragHelper$Callback;

    invoke-static {p1, v0}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;Landroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v0

    iput-object v0, p0, Landroid/support/design/widget/ad;->a:Landroid/support/v4/widget/ViewDragHelper;

    .line 189
    :cond_3
    iget-object v0, p0, Landroid/support/design/widget/ad;->a:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p3}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 169
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Landroid/support/design/widget/ad;->a:Landroid/support/v4/widget/ViewDragHelper;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Landroid/support/design/widget/ad;->a:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 196
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b(F)V
    .locals 3

    .prologue
    .line 152
    const/4 v0, 0x0

    const v1, 0x3f19999a

    const/high16 v2, 0x3f800000

    invoke-static {v0, v1, v2}, Landroid/support/design/widget/ad;->b(FFF)F

    move-result v0

    iput v0, p0, Landroid/support/design/widget/ad;->h:F

    .line 153
    return-void
.end method
