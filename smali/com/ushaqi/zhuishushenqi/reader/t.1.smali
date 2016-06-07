.class final Lcom/ushaqi/zhuishushenqi/reader/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/reader/o;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/reader/o;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/reader/t;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 437
    new-instance v0, Luk/me/lewisdeane/ldialogs/h;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/reader/t;->a:Lcom/ushaqi/zhuishushenqi/reader/o;

    invoke-static {v1}, Lcom/ushaqi/zhuishushenqi/reader/o;->a(Lcom/ushaqi/zhuishushenqi/reader/o;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Luk/me/lewisdeane/ldialogs/h;-><init>(Landroid/content/Context;)V

    .line 438
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->a(Z)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f0500cd

    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->a(I)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const v1, 0x7f0500cc

    .line 439
    invoke-virtual {v0, v1}, Luk/me/lewisdeane/ldialogs/h;->b(I)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/ushaqi/zhuishushenqi/reader/u;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/reader/u;-><init>(Lcom/ushaqi/zhuishushenqi/reader/t;)V

    .line 440
    invoke-virtual {v0, v1, v2}, Luk/me/lewisdeane/ldialogs/h;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Luk/me/lewisdeane/ldialogs/h;

    move-result-object v0

    .line 445
    invoke-virtual {v0}, Luk/me/lewisdeane/ldialogs/h;->b()Landroid/app/AlertDialog;

    .line 446
    return-void
.end method
