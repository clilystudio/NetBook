.class public abstract Lcom/androidquery/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/androidquery/b",
        "<TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static g:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/app/Dialog;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/view/View;

.field private c:Ljava/lang/Object;

.field private d:Lcom/androidquery/a/a;

.field private e:I

.field private f:Lorg/apache/http/HttpHost;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1386
    new-array v0, v3, [Ljava/lang/Class;

    const-class v1, Landroid/view/View;

    aput-object v1, v0, v2

    .line 1449
    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Landroid/widget/AdapterView;

    aput-object v1, v0, v2

    const-class v1, Landroid/view/View;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    .line 1535
    new-array v0, v4, [Ljava/lang/Class;

    const-class v1, Landroid/widget/AbsListView;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    .line 1583
    new-array v0, v6, [Ljava/lang/Class;

    const-class v1, Ljava/lang/CharSequence;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    .line 1606
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    .line 1624
    new-array v0, v3, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    .line 1641
    new-array v0, v4, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v2

    const-class v1, Landroid/graphics/Paint;

    aput-object v1, v0, v3

    .line 2549
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/androidquery/b;->g:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidquery/b;->e:I

    .line 184
    iput-object p1, p0, Lcom/androidquery/b;->a:Landroid/content/Context;

    .line 185
    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1908
    iput-object v1, p0, Lcom/androidquery/b;->d:Lcom/androidquery/a/a;

    .line 1909
    iput-object v1, p0, Lcom/androidquery/b;->c:Ljava/lang/Object;

    .line 1911
    const/4 v0, 0x0

    iput v0, p0, Lcom/androidquery/b;->e:I

    .line 1912
    iput-object v1, p0, Lcom/androidquery/b;->f:Lorg/apache/http/HttpHost;

    .line 1915
    return-void
.end method


# virtual methods
.method public final a(Landroid/app/Dialog;)Lcom/androidquery/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2560
    if-eqz p1, :cond_0

    .line 2561
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 2562
    sget-object v0, Lcom/androidquery/b;->g:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2567
    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Landroid/view/View;)Lcom/androidquery/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 315
    iput-object p1, p0, Lcom/androidquery/b;->b:Landroid/view/View;

    .line 316
    invoke-direct {p0}, Lcom/androidquery/b;->a()V

    .line 317
    return-object p0
.end method

.method public final a(Ljava/lang/String;ZZ)Lcom/androidquery/b;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)TT;"
        }
    .end annotation

    .prologue
    .line 715
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 3733
    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 3755
    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 3775
    const/4 v11, 0x0

    .line 3780
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/androidquery/b;->b:Landroid/view/View;

    instance-of v1, v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    .line 3781
    const/4 v1, 0x0

    .line 3855
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/androidquery/b;->a:Landroid/content/Context;

    .line 3781
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/androidquery/b;->b:Landroid/view/View;

    check-cast v3, Landroid/widget/ImageView;

    const v12, 0x7f7fffff

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v18}, Lcom/androidquery/b/d;->a(Landroid/app/Activity;Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;ZZIILandroid/graphics/Bitmap;IFFLjava/lang/Object;Lcom/androidquery/a/a;IILorg/apache/http/HttpHost;Ljava/lang/String;)V

    .line 3782
    invoke-direct/range {p0 .. p0}, Lcom/androidquery/b;->a()V

    .line 715
    :cond_0
    return-object p0
.end method

.method public final b(Landroid/app/Dialog;)Lcom/androidquery/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Dialog;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 2579
    if-eqz p1, :cond_0

    .line 2580
    :try_start_0
    sget-object v0, Lcom/androidquery/b;->g:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2581
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2586
    :cond_0
    :goto_0
    return-object p0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
