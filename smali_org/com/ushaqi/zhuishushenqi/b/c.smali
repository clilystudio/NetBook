.class public final Lcom/ushaqi/zhuishushenqi/b/c;
.super Lcom/ushaqi/zhuishushenqi/b/b;
.source "SourceFile"


# instance fields
.field private b:Lcom/ushaqi/zhuishushenqi/ui/bf;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ushaqi/zhuishushenqi/ui/bf;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/ushaqi/zhuishushenqi/b/b;-><init>(Landroid/content/Context;)V

    .line 18
    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/b/c;->b:Lcom/ushaqi/zhuishushenqi/ui/bf;

    .line 19
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 23
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/b/c;->a:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SearchActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 24
    const-string v1, "keyword"

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/b/c;->b:Lcom/ushaqi/zhuishushenqi/ui/bf;

    invoke-virtual {v2}, Lcom/ushaqi/zhuishushenqi/ui/bf;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    return-object v0
.end method
