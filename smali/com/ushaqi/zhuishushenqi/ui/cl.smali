.class final Lcom/ushaqi/zhuishushenqi/ui/cl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;)V
    .locals 1

    .prologue
    .line 123
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/cl;->b:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cl;->a:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cl;->a:Z

    .line 137
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cancelClose:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    return-void
.end method

.method final a(J)V
    .locals 3

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cl;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cl;->b:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cl;->b:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->d()V

    .line 130
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/cl;->b:Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;Z)Z

    .line 131
    invoke-static {}, Lcom/ushaqi/zhuishushenqi/ui/SplashActivity;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "....."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/ushaqi/zhuishushenqi/ui/cl;->a:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_0
    return-void
.end method
