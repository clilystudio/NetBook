.class public final Lcom/ushaqi/zhuishushenqi/view/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Lcom/ushaqi/zhuishushenqi/ui/cd;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/ui/cd;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/view/c;->a:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/view/c;->b:Lcom/ushaqi/zhuishushenqi/ui/cd;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/view/c;)Lcom/ushaqi/zhuishushenqi/ui/cd;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/view/c;->b:Lcom/ushaqi/zhuishushenqi/ui/cd;

    return-object v0
.end method


# virtual methods
.method public final a()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/cocosw/bottomsheet/g;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/view/c;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/cocosw/bottomsheet/g;-><init>(Landroid/app/Activity;)V

    const v1, 0x7f0d0006

    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/g;->a(I)Lcom/cocosw/bottomsheet/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/g;->a()Lcom/cocosw/bottomsheet/g;

    move-result-object v0

    new-instance v1, Lcom/ushaqi/zhuishushenqi/view/d;

    invoke-direct {v1, p0}, Lcom/ushaqi/zhuishushenqi/view/d;-><init>(Lcom/ushaqi/zhuishushenqi/view/c;)V

    invoke-virtual {v0, v1}, Lcom/cocosw/bottomsheet/g;->a(Landroid/content/DialogInterface$OnClickListener;)Lcom/cocosw/bottomsheet/g;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/cocosw/bottomsheet/g;->b()Lcom/cocosw/bottomsheet/a;

    move-result-object v0

    .line 52
    return-object v0
.end method
