.class final Lcom/arcsoft/hpay100/c/m;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/arcsoft/hpay100/c/m;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/arcsoft/hpay100/c/m;->b:Ljava/lang/String;

    iput p3, p0, Lcom/arcsoft/hpay100/c/m;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/arcsoft/hpay100/c/m;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/arcsoft/hpay100/c/m;->b:Ljava/lang/String;

    iget v2, p0, Lcom/arcsoft/hpay100/c/m;->c:I

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
