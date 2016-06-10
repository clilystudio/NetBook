.class final Lcom/arcsoft/hpay100/web/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/arcsoft/hpay100/web/HPayWebView;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/web/HPayWebView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/web/k;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    iput-object p2, p0, Lcom/arcsoft/hpay100/web/k;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/arcsoft/hpay100/web/k;->a:Lcom/arcsoft/hpay100/web/HPayWebView;

    iget-object v1, p0, Lcom/arcsoft/hpay100/web/k;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/arcsoft/hpay100/web/HPayWebView;->b(Lcom/arcsoft/hpay100/web/HPayWebView;Ljava/lang/String;)V

    return-void
.end method
