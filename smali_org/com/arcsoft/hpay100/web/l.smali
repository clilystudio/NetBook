.class final Lcom/arcsoft/hpay100/web/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/arcsoft/hpay100/web/HPayWebView;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/web/HPayWebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/l;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    iput-object p2, p0, Lcom/arcsoft/hpay100/web/l;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/l;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/arcsoft/hpay100/web/l;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/arcsoft/hpay100/web/HPayWebView;->loadUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/l;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/arcsoft/hpay100/config/l;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dalongTest"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadjsurl mNumberJsonJs:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/arcsoft/hpay100/web/HPayWebView;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/arcsoft/hpay100/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/arcsoft/hpay100/web/HPayWebView;->a:I

    if-nez v1, :cond_1

    sget v1, Lcom/arcsoft/hpay100/web/HPayWebView;->a:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/arcsoft/hpay100/web/HPayWebView;->a:I

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/l;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:hpay_func.inputPhoneAndGetVerifyCode(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->loadUrl(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/arcsoft/hpay100/web/l;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "javascript:hpay_func.inputPhone(\'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\')"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/arcsoft/hpay100/web/HPayWebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method
