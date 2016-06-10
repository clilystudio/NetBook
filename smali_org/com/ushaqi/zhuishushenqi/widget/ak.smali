.class public final Lcom/ushaqi/zhuishushenqi/widget/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/ushaqi/zhuishushenqi/widget/am;

.field private final b:Lcom/cocosw/bottomsheet/g;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/widget/am;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/ushaqi/zhuishushenqi/widget/am;",
            "Ljava/util/List",
            "<",
            "Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/widget/ak;->a:Lcom/ushaqi/zhuishushenqi/widget/am;

    .line 27
    new-instance v0, Lcom/cocosw/bottomsheet/g;

    invoke-direct {v0, p1}, Lcom/cocosw/bottomsheet/g;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ak;->b:Lcom/cocosw/bottomsheet/g;

    .line 28
    iput-object p3, p0, Lcom/ushaqi/zhuishushenqi/widget/ak;->c:Ljava/util/List;

    .line 29
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/widget/ak;->b()V

    .line 30
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/widget/ak;)Lcom/ushaqi/zhuishushenqi/widget/am;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ak;->a:Lcom/ushaqi/zhuishushenqi/widget/am;

    return-object v0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/widget/ak;)Ljava/util/List;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ak;->c:Ljava/util/List;

    return-object v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 46
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ak;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;

    .line 47
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/widget/ak;->b:Lcom/cocosw/bottomsheet/g;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->getId()I

    move-result v3

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->getIconId()I

    move-result v4

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/model/PaySheetItem;->getTextId()I

    move-result v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/cocosw/bottomsheet/g;->a(III)Lcom/cocosw/bottomsheet/g;

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ak;->b:Lcom/cocosw/bottomsheet/g;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/g;->a()Lcom/cocosw/bottomsheet/g;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/widget/al;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/widget/al;-><init>(Lcom/ushaqi/zhuishushenqi/widget/ak;)V

    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/g;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/cocosw/bottomsheet/g;

    .line 42
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/widget/ak;->b:Lcom/cocosw/bottomsheet/g;

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/g;->b()Lcom/cocosw/bottomsheet/a;

    move-result-object v0

    return-object v0
.end method
