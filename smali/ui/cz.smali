.class final Lcom/ushaqi/zhuishushenqi/ui/cz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ljava/lang/String;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/cw;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/cw;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/cz;->b:Lcom/ushaqi/zhuishushenqi/ui/cw;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/cz;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cz;->b:Lcom/ushaqi/zhuishushenqi/ui/cw;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/cw;->c(Lcom/ushaqi/zhuishushenqi/ui/cw;)Landroid/webkit/WebView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:ZssqJsApiOnShared(\'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/cz;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 101
    return-void
.end method
