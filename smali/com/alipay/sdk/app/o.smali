.class public Lcom/alipay/sdk/app/o;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    const/4 v0, 0x0

    .line 1027
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1030
    iput v0, p0, Lcom/alipay/sdk/app/o;->b:I

    .line 1031
    iput v0, p0, Lcom/alipay/sdk/app/o;->c:I

    .line 1032
    iput v1, p0, Lcom/alipay/sdk/app/o;->d:I

    .line 1033
    iput v1, p0, Lcom/alipay/sdk/app/o;->e:I

    .line 1034
    iput v0, p0, Lcom/alipay/sdk/app/o;->f:I

    .line 1035
    iput v0, p0, Lcom/alipay/sdk/app/o;->g:I

    .line 1037
    iput-boolean v0, p0, Lcom/alipay/sdk/app/o;->h:Z

    .line 1038
    iput-boolean v0, p0, Lcom/alipay/sdk/app/o;->i:Z

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/alipay/sdk/app/m;->c:Lcom/alipay/sdk/app/m;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/m;->a()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/sdk/app/m;->a(I)Lcom/alipay/sdk/app/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/app/m;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/sdk/app/m;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/o;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resultStatus={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "};memo={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "};result={"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/alipay/sdk/app/m;->e:Lcom/alipay/sdk/app/m;

    invoke-virtual {v0}, Lcom/alipay/sdk/app/m;->a()I

    move-result v0

    invoke-static {v0}, Lcom/alipay/sdk/app/m;->a(I)Lcom/alipay/sdk/app/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/sdk/app/m;->a()I

    move-result v1

    invoke-virtual {v0}, Lcom/alipay/sdk/app/m;->b()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {v1, v0, v2}, Lcom/alipay/sdk/app/o;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 1057
    iput p1, p0, Lcom/alipay/sdk/app/o;->d:I

    .line 1058
    iput p2, p0, Lcom/alipay/sdk/app/o;->e:I

    .line 1059
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/sdk/app/o;->i:Z

    .line 1060
    iget-boolean v0, p0, Lcom/alipay/sdk/app/o;->h:Z

    if-eqz v0, :cond_2

    .line 1061
    if-eq p2, v1, :cond_0

    iput p2, p0, Lcom/alipay/sdk/app/o;->b:I

    .line 1062
    :cond_0
    if-eq p1, v1, :cond_1

    iput p1, p0, Lcom/alipay/sdk/app/o;->c:I

    .line 1067
    :cond_1
    :goto_0
    return-void

    .line 1064
    :cond_2
    if-eq p1, v1, :cond_3

    iput p1, p0, Lcom/alipay/sdk/app/o;->b:I

    .line 1065
    :cond_3
    if-eq p2, v1, :cond_1

    iput p2, p0, Lcom/alipay/sdk/app/o;->c:I

    goto :goto_0
.end method

.method public a(Z)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 1076
    iget-boolean v0, p0, Lcom/alipay/sdk/app/o;->h:Z

    if-ne p1, v0, :cond_0

    .line 1092
    :goto_0
    return-void

    .line 1079
    :cond_0
    iput-boolean p1, p0, Lcom/alipay/sdk/app/o;->h:Z

    .line 1080
    iget-boolean v0, p0, Lcom/alipay/sdk/app/o;->i:Z

    if-eqz v0, :cond_6

    .line 1081
    if-eqz p1, :cond_3

    .line 1082
    iget v0, p0, Lcom/alipay/sdk/app/o;->e:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/alipay/sdk/app/o;->e:I

    :goto_1
    iput v0, p0, Lcom/alipay/sdk/app/o;->b:I

    .line 1083
    iget v0, p0, Lcom/alipay/sdk/app/o;->d:I

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/alipay/sdk/app/o;->d:I

    :goto_2
    iput v0, p0, Lcom/alipay/sdk/app/o;->c:I

    goto :goto_0

    .line 1082
    :cond_1
    iget v0, p0, Lcom/alipay/sdk/app/o;->f:I

    goto :goto_1

    .line 1083
    :cond_2
    iget v0, p0, Lcom/alipay/sdk/app/o;->g:I

    goto :goto_2

    .line 1085
    :cond_3
    iget v0, p0, Lcom/alipay/sdk/app/o;->d:I

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/alipay/sdk/app/o;->d:I

    :goto_3
    iput v0, p0, Lcom/alipay/sdk/app/o;->b:I

    .line 1086
    iget v0, p0, Lcom/alipay/sdk/app/o;->e:I

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/alipay/sdk/app/o;->e:I

    :goto_4
    iput v0, p0, Lcom/alipay/sdk/app/o;->c:I

    goto :goto_0

    .line 1085
    :cond_4
    iget v0, p0, Lcom/alipay/sdk/app/o;->f:I

    goto :goto_3

    .line 1086
    :cond_5
    iget v0, p0, Lcom/alipay/sdk/app/o;->g:I

    goto :goto_4

    .line 1089
    :cond_6
    iget v0, p0, Lcom/alipay/sdk/app/o;->f:I

    iput v0, p0, Lcom/alipay/sdk/app/o;->b:I

    .line 1090
    iget v0, p0, Lcom/alipay/sdk/app/o;->g:I

    iput v0, p0, Lcom/alipay/sdk/app/o;->c:I

    goto :goto_0
.end method

.method public b(II)V
    .locals 2

    .prologue
    const/high16 v1, -0x80000000

    .line 1070
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/sdk/app/o;->i:Z

    .line 1071
    if-eq p1, v1, :cond_0

    iput p1, p0, Lcom/alipay/sdk/app/o;->f:I

    iput p1, p0, Lcom/alipay/sdk/app/o;->b:I

    .line 1072
    :cond_0
    if-eq p2, v1, :cond_1

    iput p2, p0, Lcom/alipay/sdk/app/o;->g:I

    iput p2, p0, Lcom/alipay/sdk/app/o;->c:I

    .line 1073
    :cond_1
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 1041
    iget v0, p0, Lcom/alipay/sdk/app/o;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 1045
    iget v0, p0, Lcom/alipay/sdk/app/o;->c:I

    return v0
.end method

.method public e()I
    .locals 1

    .prologue
    .line 1049
    iget-boolean v0, p0, Lcom/alipay/sdk/app/o;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/sdk/app/o;->c:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alipay/sdk/app/o;->b:I

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 1053
    iget-boolean v0, p0, Lcom/alipay/sdk/app/o;->h:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/alipay/sdk/app/o;->b:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/alipay/sdk/app/o;->c:I

    goto :goto_0
.end method
