.class final Lcom/ushaqi/zhuishushenqi/ui/cf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ushaqi/zhuishushenqi/ui/cd;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/cf;->a:Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cf;->a:Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;

    invoke-static {v0, p1}, Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;I)V

    .line 67
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cf;->a:Lcom/ushaqi/zhuishushenqi/ui/ShareRemoveAdActivity;

    const-string v1, "share_remove_channel_click"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/umeng/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-void
.end method
