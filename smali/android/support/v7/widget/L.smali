.class public Landroid/support/v7/widget/L;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/reflect/Method;


# instance fields
.field b:I

.field private c:Landroid/content/Context;

.field private d:Landroid/widget/PopupWindow;

.field private e:Landroid/widget/ListAdapter;

.field private f:Landroid/support/v7/widget/O;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:I

.field private m:Z

.field private n:Z

.field private o:I

.field private p:Landroid/database/DataSetObserver;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/AdapterView$OnItemClickListener;

.field private final s:Landroid/support/v7/widget/W;

.field private final t:Landroid/support/v7/widget/V;

.field private final u:Landroid/support/v7/widget/U;

.field private final v:Landroid/support/v7/widget/S;

.field private w:Landroid/os/Handler;

.field private x:Landroid/graphics/Rect;

.field private y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 80
    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setClipToScreenEnabled"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v7/widget/L;->a:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    const-string v0, "ListPopupWindow"

    const-string v1, "Could not find method setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 192
    const/4 v0, 0x0

    sget v1, Landroid/support/v7/appcompat/R$attr;->listPopupWindowStyle:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/widget/L;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/L;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v0, -0x2

    const/4 v2, 0x0

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput v0, p0, Landroid/support/v7/widget/L;->g:I

    .line 93
    iput v0, p0, Landroid/support/v7/widget/L;->h:I

    .line 98
    iput v2, p0, Landroid/support/v7/widget/L;->l:I

    .line 100
    iput-boolean v2, p0, Landroid/support/v7/widget/L;->m:Z

    .line 101
    iput-boolean v2, p0, Landroid/support/v7/widget/L;->n:Z

    .line 102
    const v0, 0x7fffffff

    iput v0, p0, Landroid/support/v7/widget/L;->b:I

    .line 105
    iput v2, p0, Landroid/support/v7/widget/L;->o:I

    .line 116
    new-instance v0, Landroid/support/v7/widget/W;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/W;-><init>(Landroid/support/v7/widget/L;B)V

    iput-object v0, p0, Landroid/support/v7/widget/L;->s:Landroid/support/v7/widget/W;

    .line 117
    new-instance v0, Landroid/support/v7/widget/V;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/V;-><init>(Landroid/support/v7/widget/L;B)V

    iput-object v0, p0, Landroid/support/v7/widget/L;->t:Landroid/support/v7/widget/V;

    .line 118
    new-instance v0, Landroid/support/v7/widget/U;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/U;-><init>(Landroid/support/v7/widget/L;B)V

    iput-object v0, p0, Landroid/support/v7/widget/L;->u:Landroid/support/v7/widget/U;

    .line 119
    new-instance v0, Landroid/support/v7/widget/S;

    invoke-direct {v0, p0, v2}, Landroid/support/v7/widget/S;-><init>(Landroid/support/v7/widget/L;B)V

    iput-object v0, p0, Landroid/support/v7/widget/L;->v:Landroid/support/v7/widget/S;

    .line 122
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/L;->w:Landroid/os/Handler;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/L;->x:Landroid/graphics/Rect;

    .line 228
    iput-object p1, p0, Landroid/support/v7/widget/L;->c:Landroid/content/Context;

    .line 230
    sget-object v0, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 232
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownHorizontalOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/L;->i:I

    .line 234
    sget v1, Landroid/support/v7/appcompat/R$styleable;->ListPopupWindow_android_dropDownVerticalOffset:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/L;->j:I

    .line 236
    iget v1, p0, Landroid/support/v7/widget/L;->j:I

    if-eqz v1, :cond_0

    .line 237
    iput-boolean v3, p0, Landroid/support/v7/widget/L;->k:Z

    .line 239
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 241
    new-instance v0, Landroid/support/v7/internal/widget/A;

    invoke-direct {v0, p1, p2, p3}, Landroid/support/v7/internal/widget/A;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    .line 242
    iget-object v0, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 245
    iget-object v0, p0, Landroid/support/v7/widget/L;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 246
    invoke-static {v0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 247
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/L;)Landroid/support/v7/widget/O;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v7/widget/L;->f:Landroid/support/v7/widget/O;

    return-object v0
.end method

.method static synthetic b(Landroid/support/v7/widget/L;)Landroid/widget/PopupWindow;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic c(Landroid/support/v7/widget/L;)Landroid/support/v7/widget/W;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v7/widget/L;->s:Landroid/support/v7/widget/W;

    return-object v0
.end method

.method static synthetic d(Landroid/support/v7/widget/L;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Landroid/support/v7/widget/L;->w:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 671
    iget-object v0, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 673
    iget-object v0, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 674
    iput-object v1, p0, Landroid/support/v7/widget/L;->f:Landroid/support/v7/widget/O;

    .line 675
    iget-object v0, p0, Landroid/support/v7/widget/L;->w:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/L;->s:Landroid/support/v7/widget/W;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 676
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/L;->o:I

    .line 282
    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 398
    iget-object v0, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 435
    iput-object p1, p0, Landroid/support/v7/widget/L;->q:Landroid/view/View;

    .line 436
    return-void
.end method

.method public final a(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    .line 541
    iput-object p1, p0, Landroid/support/v7/widget/L;->r:Landroid/widget/AdapterView$OnItemClickListener;

    .line 542
    return-void
.end method

.method public a(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 256
    iget-object v0, p0, Landroid/support/v7/widget/L;->p:Landroid/database/DataSetObserver;

    if-nez v0, :cond_3

    .line 257
    new-instance v0, Landroid/support/v7/widget/T;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/T;-><init>(Landroid/support/v7/widget/L;B)V

    iput-object v0, p0, Landroid/support/v7/widget/L;->p:Landroid/database/DataSetObserver;

    .line 261
    :cond_0
    :goto_0
    iput-object p1, p0, Landroid/support/v7/widget/L;->e:Landroid/widget/ListAdapter;

    .line 262
    iget-object v0, p0, Landroid/support/v7/widget/L;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 263
    iget-object v0, p0, Landroid/support/v7/widget/L;->p:Landroid/database/DataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 266
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/L;->f:Landroid/support/v7/widget/O;

    if-eqz v0, :cond_2

    .line 267
    iget-object v0, p0, Landroid/support/v7/widget/L;->f:Landroid/support/v7/widget/O;

    iget-object v1, p0, Landroid/support/v7/widget/L;->e:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/O;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 269
    :cond_2
    return-void

    .line 258
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/L;->e:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Landroid/support/v7/widget/L;->e:Landroid/widget/ListAdapter;

    iget-object v1, p0, Landroid/support/v7/widget/L;->p:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method

.method public final a(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 1

    .prologue
    .line 684
    iget-object v0, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 685
    return-void
.end method

.method public final a(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 304
    iput-boolean v1, p0, Landroid/support/v7/widget/L;->y:Z

    .line 305
    iget-object v0, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 306
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 481
    iput p1, p0, Landroid/support/v7/widget/L;->l:I

    .line 482
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 15

    .prologue
    .line 584
    .line 3049
    const/4 v7, 0x0

    .line 3051
    iget-object v0, p0, Landroid/support/v7/widget/L;->f:Landroid/support/v7/widget/O;

    if-nez v0, :cond_3

    .line 3052
    iget-object v1, p0, Landroid/support/v7/widget/L;->c:Landroid/content/Context;

    .line 3060
    new-instance v0, Landroid/support/v7/widget/M;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/M;-><init>(Landroid/support/v7/widget/L;)V

    .line 3070
    new-instance v2, Landroid/support/v7/widget/O;

    iget-boolean v0, p0, Landroid/support/v7/widget/L;->y:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-direct {v2, v1, v0}, Landroid/support/v7/widget/O;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Landroid/support/v7/widget/L;->f:Landroid/support/v7/widget/O;

    .line 3074
    iget-object v0, p0, Landroid/support/v7/widget/L;->f:Landroid/support/v7/widget/O;

    iget-object v1, p0, Landroid/support/v7/widget/L;->e:Landroid/widget/ListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/O;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 3075
    iget-object v0, p0, Landroid/support/v7/widget/L;->f:Landroid/support/v7/widget/O;

    iget-object v1, p0, Landroid/support/v7/widget/L;->r:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/O;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 3076
    iget-object v0, p0, Landroid/support/v7/widget/L;->f:Landroid/support/v7/widget/O;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/O;->setFocusable(Z)V

    .line 3077
    iget-object v0, p0, Landroid/support/v7/widget/L;->f:Landroid/support/v7/widget/O;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/O;->setFocusableInTouchMode(Z)V

    .line 3078
    iget-object v0, p0, Landroid/support/v7/widget/L;->f:Landroid/support/v7/widget/O;

    new-instance v1, Landroid/support/v7/widget/N;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/N;-><init>(Landroid/support/v7/widget/L;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/O;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 3094
    iget-object v0, p0, Landroid/support/v7/widget/L;->f:Landroid/support/v7/widget/O;

    iget-object v1, p0, Landroid/support/v7/widget/L;->u:Landroid/support/v7/widget/U;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/O;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 3100
    iget-object v0, p0, Landroid/support/v7/widget/L;->f:Landroid/support/v7/widget/O;

    .line 3142
    iget-object v1, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 3156
    :goto_1
    const/4 v0, 0x0

    .line 3157
    iget-object v1, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 3158
    if-eqz v1, :cond_4

    .line 3159
    iget-object v0, p0, Landroid/support/v7/widget/L;->x:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 3160
    iget-object v0, p0, Landroid/support/v7/widget/L;->x:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/v7/widget/L;->x:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, v1

    .line 3164
    iget-boolean v1, p0, Landroid/support/v7/widget/L;->k:Z

    if-nez v1, :cond_0

    .line 3165
    iget-object v1, p0, Landroid/support/v7/widget/L;->x:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    iput v1, p0, Landroid/support/v7/widget/L;->j:I

    .line 3172
    :cond_0
    :goto_2
    iget-object v1, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    .line 3174
    iget-object v1, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    .line 3425
    iget-object v2, p0, Landroid/support/v7/widget/L;->q:Landroid/view/View;

    .line 3174
    iget v3, p0, Landroid/support/v7/widget/L;->j:I

    invoke-virtual {v1, v2, v3}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v8

    .line 3177
    iget v1, p0, Landroid/support/v7/widget/L;->g:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 3178
    add-int/2addr v0, v8

    .line 586
    :goto_3
    const/4 v1, 0x0

    .line 587
    const/4 v2, 0x0

    .line 589
    invoke-virtual {p0}, Landroid/support/v7/widget/L;->f()Z

    move-result v3

    .line 591
    iget-object v4, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v4}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 592
    iget v1, p0, Landroid/support/v7/widget/L;->h:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    .line 595
    const/4 v4, -0x1

    .line 602
    :goto_4
    iget v1, p0, Landroid/support/v7/widget/L;->g:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_11

    .line 605
    if-eqz v3, :cond_d

    move v5, v0

    .line 606
    :goto_5
    if-eqz v3, :cond_f

    .line 607
    iget-object v1, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/support/v7/widget/L;->h:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_e

    const/4 v0, -0x1

    :goto_6
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 622
    :goto_7
    iget-object v0, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 624
    iget-object v0, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    .line 5425
    iget-object v1, p0, Landroid/support/v7/widget/L;->q:Landroid/view/View;

    .line 624
    iget v2, p0, Landroid/support/v7/widget/L;->i:I

    iget v3, p0, Landroid/support/v7/widget/L;->j:I

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 665
    :cond_1
    :goto_8
    return-void

    .line 3070
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 3144
    :cond_3
    iget-object v0, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    goto :goto_1

    .line 3168
    :cond_4
    iget-object v1, p0, Landroid/support/v7/widget/L;->x:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    .line 3182
    :cond_5
    iget v1, p0, Landroid/support/v7/widget/L;->h:I

    packed-switch v1, :pswitch_data_0

    .line 3196
    iget v1, p0, Landroid/support/v7/widget/L;->h:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 3200
    :goto_9
    iget-object v10, p0, Landroid/support/v7/widget/L;->f:Landroid/support/v7/widget/O;

    .line 4259
    invoke-virtual {v10}, Landroid/support/v7/internal/widget/ListViewCompat;->getListPaddingTop()I

    move-result v3

    .line 4260
    invoke-virtual {v10}, Landroid/support/v7/internal/widget/ListViewCompat;->getListPaddingBottom()I

    move-result v4

    .line 4261
    invoke-virtual {v10}, Landroid/support/v7/internal/widget/ListViewCompat;->getListPaddingLeft()I

    .line 4262
    invoke-virtual {v10}, Landroid/support/v7/internal/widget/ListViewCompat;->getListPaddingRight()I

    .line 4263
    invoke-virtual {v10}, Landroid/support/v7/internal/widget/ListViewCompat;->getDividerHeight()I

    move-result v2

    .line 4264
    invoke-virtual {v10}, Landroid/support/v7/internal/widget/ListViewCompat;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 4266
    invoke-virtual {v10}, Landroid/support/v7/internal/widget/ListViewCompat;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v11

    .line 4268
    if-nez v11, :cond_7

    .line 4269
    add-int/2addr v4, v3

    .line 3204
    :cond_6
    :goto_a
    if-lez v4, :cond_1b

    add-int/lit8 v0, v0, 0x0

    .line 3206
    :goto_b
    add-int/2addr v0, v4

    goto :goto_3

    .line 3184
    :pswitch_0
    iget-object v1, p0, Landroid/support/v7/widget/L;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Landroid/support/v7/widget/L;->x:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/widget/L;->x:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_9

    .line 3190
    :pswitch_1
    iget-object v1, p0, Landroid/support/v7/widget/L;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v2, p0, Landroid/support/v7/widget/L;->x:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v7/widget/L;->x:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    goto :goto_9

    .line 4273
    :cond_7
    add-int/2addr v4, v3

    .line 4274
    if-lez v2, :cond_8

    if-eqz v5, :cond_8

    .line 4281
    :goto_c
    const/4 v6, 0x0

    .line 4282
    const/4 v5, 0x0

    .line 4283
    invoke-interface {v11}, Landroid/widget/ListAdapter;->getCount()I

    move-result v12

    .line 4284
    const/4 v3, 0x0

    move v9, v3

    :goto_d
    if-ge v9, v12, :cond_6

    .line 4285
    invoke-interface {v11, v9}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    .line 4286
    if-eq v3, v5, :cond_1c

    .line 4287
    const/4 v5, 0x0

    move v14, v3

    move-object v3, v5

    move v5, v14

    .line 4290
    :goto_e
    invoke-interface {v11, v9, v3, v10}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 4294
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 4295
    if-eqz v3, :cond_9

    iget v13, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v13, :cond_9

    .line 4296
    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/high16 v13, 0x40000000    # 2.0f

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 4301
    :goto_f
    invoke-virtual {v6, v1, v3}, Landroid/view/View;->measure(II)V

    .line 4303
    if-lez v9, :cond_1d

    .line 4305
    add-int v3, v4, v2

    .line 4308
    :goto_10
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v3

    .line 4310
    if-lt v4, v8, :cond_a

    move v4, v8

    .line 4313
    goto :goto_a

    .line 4274
    :cond_8
    const/4 v2, 0x0

    goto :goto_c

    .line 4299
    :cond_9
    const/4 v3, 0x0

    const/4 v13, 0x0

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    goto :goto_f

    .line 4284
    :cond_a
    add-int/lit8 v3, v9, 0x1

    move v9, v3

    goto :goto_d

    .line 596
    :cond_b
    iget v1, p0, Landroid/support/v7/widget/L;->h:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_c

    .line 4425
    iget-object v1, p0, Landroid/support/v7/widget/L;->q:Landroid/view/View;

    .line 597
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v4

    goto/16 :goto_4

    .line 599
    :cond_c
    iget v4, p0, Landroid/support/v7/widget/L;->h:I

    goto/16 :goto_4

    .line 605
    :cond_d
    const/4 v5, -0x1

    goto/16 :goto_5

    .line 607
    :cond_e
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 611
    :cond_f
    iget-object v1, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    iget v0, p0, Landroid/support/v7/widget/L;->h:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_10

    const/4 v0, -0x1

    :goto_11
    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    goto/16 :goto_7

    :cond_10
    const/4 v0, 0x0

    goto :goto_11

    .line 616
    :cond_11
    iget v1, p0, Landroid/support/v7/widget/L;->g:I

    const/4 v2, -0x2

    if-ne v1, v2, :cond_12

    move v5, v0

    .line 617
    goto/16 :goto_7

    .line 619
    :cond_12
    iget v5, p0, Landroid/support/v7/widget/L;->g:I

    goto/16 :goto_7

    .line 627
    :cond_13
    iget v3, p0, Landroid/support/v7/widget/L;->h:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_17

    .line 628
    const/4 v1, -0x1

    .line 637
    :goto_12
    iget v3, p0, Landroid/support/v7/widget/L;->g:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_19

    .line 638
    const/4 v0, -0x1

    .line 647
    :goto_13
    iget-object v2, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v1, v0}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 6771
    sget-object v0, Landroid/support/v7/widget/L;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_14

    .line 6773
    :try_start_0
    sget-object v0, Landroid/support/v7/widget/L;->a:Ljava/lang/reflect/Method;

    iget-object v1, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    :cond_14
    :goto_14
    iget-object v0, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 653
    iget-object v0, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/support/v7/widget/L;->t:Landroid/support/v7/widget/V;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 654
    iget-object v0, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    .line 7425
    iget-object v1, p0, Landroid/support/v7/widget/L;->q:Landroid/view/View;

    .line 654
    iget v2, p0, Landroid/support/v7/widget/L;->i:I

    iget v3, p0, Landroid/support/v7/widget/L;->j:I

    iget v4, p0, Landroid/support/v7/widget/L;->l:I

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/widget/PopupWindowCompat;->showAsDropDown(Landroid/widget/PopupWindow;Landroid/view/View;III)V

    .line 656
    iget-object v0, p0, Landroid/support/v7/widget/L;->f:Landroid/support/v7/widget/O;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/O;->setSelection(I)V

    .line 658
    iget-boolean v0, p0, Landroid/support/v7/widget/L;->y:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/widget/L;->f:Landroid/support/v7/widget/O;

    invoke-virtual {v0}, Landroid/support/v7/widget/O;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 659
    :cond_15
    invoke-virtual {p0}, Landroid/support/v7/widget/L;->e()V

    .line 661
    :cond_16
    iget-boolean v0, p0, Landroid/support/v7/widget/L;->y:Z

    if-nez v0, :cond_1

    .line 662
    iget-object v0, p0, Landroid/support/v7/widget/L;->w:Landroid/os/Handler;

    iget-object v1, p0, Landroid/support/v7/widget/L;->v:Landroid/support/v7/widget/S;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_8

    .line 630
    :cond_17
    iget v3, p0, Landroid/support/v7/widget/L;->h:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_18

    .line 631
    iget-object v3, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    .line 6425
    iget-object v4, p0, Landroid/support/v7/widget/L;->q:Landroid/view/View;

    .line 631
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_12

    .line 633
    :cond_18
    iget-object v3, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    iget v4, p0, Landroid/support/v7/widget/L;->h:I

    invoke-virtual {v3, v4}, Landroid/widget/PopupWindow;->setWidth(I)V

    goto :goto_12

    .line 640
    :cond_19
    iget v3, p0, Landroid/support/v7/widget/L;->g:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1a

    .line 641
    iget-object v3, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v3, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v0, v2

    goto :goto_13

    .line 643
    :cond_1a
    iget-object v0, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    iget v3, p0, Landroid/support/v7/widget/L;->g:I

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    move v0, v2

    goto/16 :goto_13

    .line 6775
    :catch_0
    move-exception v0

    const-string v0, "ListPopupWindow"

    const-string v1, "Could not call setClipToScreenEnabled() on PopupWindow. Oh well."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :cond_1b
    move v0, v7

    goto/16 :goto_b

    :cond_1c
    move-object v3, v6

    goto/16 :goto_e

    :cond_1d
    move v3, v4

    goto/16 :goto_10

    .line 3182
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final c(I)V
    .locals 2

    .prologue
    .line 508
    iget-object v0, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_0

    .line 510
    iget-object v1, p0, Landroid/support/v7/widget/L;->x:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 511
    iget-object v0, p0, Landroid/support/v7/widget/L;->x:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/v7/widget/L;->x:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/L;->h:I

    .line 515
    :goto_0
    return-void

    .line 2498
    :cond_0
    iput p1, p0, Landroid/support/v7/widget/L;->h:I

    goto :goto_0
.end method

.method public final d()Landroid/view/View;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Landroid/support/v7/widget/L;->q:Landroid/view/View;

    return-object v0
.end method

.method public final d(I)V
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 711
    return-void
.end method

.method public final e()V
    .locals 2

    .prologue
    .line 747
    iget-object v0, p0, Landroid/support/v7/widget/L;->f:Landroid/support/v7/widget/O;

    .line 748
    if-eqz v0, :cond_0

    .line 750
    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/support/v7/widget/O;->a(Landroid/support/v7/widget/O;Z)Z

    .line 752
    invoke-virtual {v0}, Landroid/support/v7/widget/O;->requestLayout()V

    .line 754
    :cond_0
    return-void
.end method

.method public final f()Z
    .locals 2

    .prologue
    .line 768
    iget-object v0, p0, Landroid/support/v7/widget/L;->d:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 845
    iget-object v0, p0, Landroid/support/v7/widget/L;->f:Landroid/support/v7/widget/O;

    return-object v0
.end method
