.class final Lcom/ushaqi/zhuishushenqi/ui/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/ui/ab;


# instance fields
.field final synthetic a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/ay;->a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ay;->a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;)V

    .line 107
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ay;->a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    .line 1405
    const-string v1, "book_info_download"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public final b()V
    .locals 3

    .prologue
    .line 112
    new-instance v0, Lcom/ushaqi/zhuishushenqi/ui/cb;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/ay;->a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/az;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/az;-><init>(Lcom/ushaqi/zhuishushenqi/ui/ay;)V

    invoke-direct {v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/cb;-><init>(Landroid/app/Activity;Lcom/ushaqi/zhuishushenqi/ui/cd;)V

    .line 118
    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/cb;->a()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 119
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/ay;->a:Lcom/ushaqi/zhuishushenqi/ui/BookInfoActivity;

    .line 1485
    const-string v1, "share_book_info_ab"

    invoke-static {v0, v1}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 120
    return-void
.end method
