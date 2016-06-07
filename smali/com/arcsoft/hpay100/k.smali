.class final Lcom/arcsoft/hpay100/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/arcsoft/hpay100/y;


# instance fields
.field private synthetic a:Lcom/arcsoft/hpay100/HPaySdkActivity;


# direct methods
.method constructor <init>(Lcom/arcsoft/hpay100/HPaySdkActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/k;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/arcsoft/hpay100/z;)V
    .locals 1

    iget-object v0, p0, Lcom/arcsoft/hpay100/k;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-static {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->b(Lcom/arcsoft/hpay100/HPaySdkActivity;)V

    sget-object v0, Lcom/arcsoft/hpay100/HPaySdkActivity;->a:Lcom/arcsoft/hpay100/y;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/arcsoft/hpay100/HPaySdkActivity;->a:Lcom/arcsoft/hpay100/y;

    invoke-interface {v0, p1}, Lcom/arcsoft/hpay100/y;->a(Lcom/arcsoft/hpay100/z;)V

    :cond_0
    iget-object v0, p0, Lcom/arcsoft/hpay100/k;->a:Lcom/arcsoft/hpay100/HPaySdkActivity;

    invoke-virtual {v0}, Lcom/arcsoft/hpay100/HPaySdkActivity;->finish()V

    return-void
.end method
