.class public Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;
.super Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;-><init>()V

    .line 83
    return-void
.end method

.method static synthetic a(Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 27
    .line 2067
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2068
    iget-object v3, p0, Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2069
    invoke-static {v0}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2070
    const-string v0, "\u4e66\u540d\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    move v0, v1

    .line 1126
    :goto_0
    if-eqz v0, :cond_0

    .line 1127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1128
    new-instance v3, Lcom/ushaqi/zhuishushenqi/ui/ba;

    const v4, 0x7f0500d4

    invoke-direct {v3, p0, p0, v4}, Lcom/ushaqi/zhuishushenqi/ui/ba;-><init>(Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;Landroid/app/Activity;I)V

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;->a:Landroid/widget/EditText;

    .line 1129
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-virtual {v3, v4}, Lcom/ushaqi/zhuishushenqi/ui/ba;->b([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 27
    :cond_0
    return-void

    .line 2073
    :cond_1
    invoke-static {v3}, Lcom/arcsoft/hpay100/a/a;->Q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2074
    const-string v0, "\u4f5c\u8005\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/util/e;->a(Landroid/app/Activity;Ljava/lang/String;)V

    move v0, v1

    .line 2075
    goto :goto_0

    :cond_2
    move v0, v2

    .line 2077
    goto :goto_0
.end method

.method static synthetic b(Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;)V
    .locals 1

    .prologue
    .line 27
    .line 2134
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/AddBookFailedActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 2135
    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;->startActivity(Landroid/content/Intent;)V

    .line 27
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/ushaqi/zhuishushenqi/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const v0, 0x7f030036

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;->setContentView(I)V

    .line 37
    const v0, 0x7f0500b0

    const v1, 0x7f0500aa

    new-instance v2, Lcom/ushaqi/zhuishushenqi/ui/aZ;

    invoke-direct {v2, p0}, Lcom/ushaqi/zhuishushenqi/ui/aZ;-><init>(Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;->a(IILcom/ushaqi/zhuishushenqi/ui/aa;)V

    .line 44
    const v0, 0x7f0c00ff

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;->a:Landroid/widget/EditText;

    .line 45
    const v0, 0x7f0c0100

    invoke-virtual {p0, v0}, Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;->b:Landroid/widget/EditText;

    .line 47
    invoke-virtual {p0}, Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_1

    .line 49
    const-string v1, "AddBookKey"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    iget-object v2, p0, Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;->a:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    const-string v1, "extra_author"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/CustomSearchActivity;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_1
    return-void
.end method
