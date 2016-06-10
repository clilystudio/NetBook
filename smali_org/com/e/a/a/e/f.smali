.class public final Lcom/e/a/a/e/f;
.super Lcom/e/a/a/d/a;


# instance fields
.field private a:Lcom/e/a/a/e/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/e/a/a/d/a;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lcom/e/a/a/d/a;-><init>()V

    invoke-virtual {p0, p1}, Lcom/e/a/a/e/f;->b(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lcom/e/a/a/e/f;->a:Lcom/e/a/a/e/g;

    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->a(Lcom/e/a/a/e/g;)Landroid/os/Bundle;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/e/a/a/d/a;->a(Landroid/os/Bundle;)V

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/e/a/a/d/a;->b(Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/arcsoft/hpay100/a/a;->a(Landroid/os/Bundle;)Lcom/e/a/a/e/g;

    move-result-object v0

    iput-object v0, p0, Lcom/e/a/a/e/f;->a:Lcom/e/a/a/e/g;

    return-void
.end method

.method public final b()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 0
    iget-object v1, p0, Lcom/e/a/a/e/f;->a:Lcom/e/a/a/e/g;

    if-nez v1, :cond_0

    .line 1000
    :goto_0
    return v0

    .line 0
    :cond_0
    iget-object v2, p0, Lcom/e/a/a/e/f;->a:Lcom/e/a/a/e/g;

    .line 2000
    iget-object v1, v2, Lcom/e/a/a/e/g;->e:Landroid/support/design/widget/K;

    if-nez v1, :cond_2

    move v1, v0

    .line 1000
    :goto_1
    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    iget-object v1, v2, Lcom/e/a/a/e/g;->d:[B

    if-eqz v1, :cond_1

    iget-object v1, v2, Lcom/e/a/a/e/g;->d:[B

    array-length v1, v1

    if-nez v1, :cond_3

    :cond_1
    const-string v1, "MicroMsg.SDK.WXMediaMessage"

    const-string v2, "checkArgs fail, thumbData should not be null when send emoji"

    invoke-static {v1, v2}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2000
    :cond_2
    iget-object v1, v2, Lcom/e/a/a/e/g;->e:Landroid/support/design/widget/K;

    invoke-interface {v1}, Landroid/support/design/widget/K;->n()I

    move-result v1

    goto :goto_1

    .line 1000
    :cond_3
    iget-object v1, v2, Lcom/e/a/a/e/g;->d:[B

    if-eqz v1, :cond_4

    iget-object v1, v2, Lcom/e/a/a/e/g;->d:[B

    array-length v1, v1

    const v3, 0x8000

    if-le v1, v3, :cond_4

    const-string v1, "MicroMsg.SDK.WXMediaMessage"

    const-string v2, "checkArgs fail, thumbData is invalid"

    invoke-static {v1, v2}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v1, v2, Lcom/e/a/a/e/g;->b:Ljava/lang/String;

    if-eqz v1, :cond_5

    iget-object v1, v2, Lcom/e/a/a/e/g;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x200

    if-le v1, v3, :cond_5

    const-string v1, "MicroMsg.SDK.WXMediaMessage"

    const-string v2, "checkArgs fail, title is invalid"

    invoke-static {v1, v2}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v1, v2, Lcom/e/a/a/e/g;->c:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, v2, Lcom/e/a/a/e/g;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x400

    if-le v1, v3, :cond_6

    const-string v1, "MicroMsg.SDK.WXMediaMessage"

    const-string v2, "checkArgs fail, description is invalid"

    invoke-static {v1, v2}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v1, v2, Lcom/e/a/a/e/g;->e:Landroid/support/design/widget/K;

    if-nez v1, :cond_7

    const-string v1, "MicroMsg.SDK.WXMediaMessage"

    const-string v2, "checkArgs fail, mediaObject is null"

    invoke-static {v1, v2}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v1, v2, Lcom/e/a/a/e/g;->f:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, v2, Lcom/e/a/a/e/g;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x40

    if-le v1, v3, :cond_8

    const-string v1, "MicroMsg.SDK.WXMediaMessage"

    const-string v2, "checkArgs fail, mediaTagName is too long"

    invoke-static {v1, v2}, Lcom/e/a/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v0, v2, Lcom/e/a/a/e/g;->e:Landroid/support/design/widget/K;

    invoke-interface {v0}, Landroid/support/design/widget/K;->o()Z

    move-result v0

    goto/16 :goto_0
.end method
