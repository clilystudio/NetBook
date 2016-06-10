.class final Lcom/umeng/update/net/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/umeng/update/net/i;


# direct methods
.method constructor <init>(Lcom/umeng/update/net/i;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/umeng/update/net/j;->a:Lcom/umeng/update/net/i;

    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    .prologue
    .line 149
    invoke-static {}, Lcom/umeng/update/net/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceConnection.onServiceConnected"

    invoke-static {v0, v1}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/umeng/update/net/j;->a:Lcom/umeng/update/net/i;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, v1}, Lcom/umeng/update/net/i;->a(Lcom/umeng/update/net/i;Landroid/os/Messenger;)V

    .line 152
    const/4 v0, 0x0

    .line 153
    const/4 v1, 0x4

    .line 152
    :try_start_0
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 154
    new-instance v1, Lcom/umeng/update/net/k;

    iget-object v2, p0, Lcom/umeng/update/net/j;->a:Lcom/umeng/update/net/i;

    invoke-static {v2}, Lcom/umeng/update/net/i;->a(Lcom/umeng/update/net/i;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/umeng/update/net/j;->a:Lcom/umeng/update/net/i;

    invoke-static {v3}, Lcom/umeng/update/net/i;->b(Lcom/umeng/update/net/i;)Ljava/lang/String;

    move-result-object v3

    .line 155
    iget-object v4, p0, Lcom/umeng/update/net/j;->a:Lcom/umeng/update/net/i;

    invoke-static {v4}, Lcom/umeng/update/net/i;->c(Lcom/umeng/update/net/i;)Ljava/lang/String;

    move-result-object v4

    .line 154
    invoke-direct {v1, v2, v3, v4}, Lcom/umeng/update/net/k;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v2, p0, Lcom/umeng/update/net/j;->a:Lcom/umeng/update/net/i;

    invoke-static {v2}, Lcom/umeng/update/net/i;->d(Lcom/umeng/update/net/i;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/umeng/update/net/k;->d:Ljava/lang/String;

    .line 157
    iget-object v2, p0, Lcom/umeng/update/net/j;->a:Lcom/umeng/update/net/i;

    invoke-static {v2}, Lcom/umeng/update/net/i;->e(Lcom/umeng/update/net/i;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/umeng/update/net/k;->e:Ljava/lang/String;

    .line 158
    iget-object v2, p0, Lcom/umeng/update/net/j;->a:Lcom/umeng/update/net/i;

    invoke-static {v2}, Lcom/umeng/update/net/i;->f(Lcom/umeng/update/net/i;)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/umeng/update/net/k;->f:[Ljava/lang/String;

    .line 159
    iget-object v2, p0, Lcom/umeng/update/net/j;->a:Lcom/umeng/update/net/i;

    invoke-static {v2}, Lcom/umeng/update/net/i;->g(Lcom/umeng/update/net/i;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/umeng/update/net/k;->g:Z

    .line 160
    iget-object v2, p0, Lcom/umeng/update/net/j;->a:Lcom/umeng/update/net/i;

    invoke-static {v2}, Lcom/umeng/update/net/i;->h(Lcom/umeng/update/net/i;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/umeng/update/net/k;->h:Z

    .line 161
    iget-object v2, p0, Lcom/umeng/update/net/j;->a:Lcom/umeng/update/net/i;

    invoke-static {v2}, Lcom/umeng/update/net/i;->i(Lcom/umeng/update/net/i;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/umeng/update/net/k;->i:Z

    .line 1245
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1246
    const-string v3, "mComponentName"

    iget-object v4, v1, Lcom/umeng/update/net/k;->a:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1247
    const-string v3, "mTitle"

    iget-object v4, v1, Lcom/umeng/update/net/k;->b:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1248
    const-string v3, "mUrl"

    iget-object v4, v1, Lcom/umeng/update/net/k;->c:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1249
    const-string v3, "mMd5"

    iget-object v4, v1, Lcom/umeng/update/net/k;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1250
    const-string v3, "mTargetMd5"

    iget-object v4, v1, Lcom/umeng/update/net/k;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    const-string v3, "reporturls"

    iget-object v4, v1, Lcom/umeng/update/net/k;->f:[Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1252
    const-string v3, "rich_notification"

    iget-boolean v4, v1, Lcom/umeng/update/net/k;->g:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1253
    const-string v3, "mSilent"

    iget-boolean v4, v1, Lcom/umeng/update/net/k;->h:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1254
    const-string v3, "mWifiOnly"

    iget-boolean v1, v1, Lcom/umeng/update/net/k;->i:Z

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 163
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 164
    iget-object v1, p0, Lcom/umeng/update/net/j;->a:Lcom/umeng/update/net/i;

    iget-object v1, v1, Lcom/umeng/update/net/i;->a:Landroid/os/Messenger;

    iput-object v1, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 165
    iget-object v1, p0, Lcom/umeng/update/net/j;->a:Lcom/umeng/update/net/i;

    invoke-static {v1}, Lcom/umeng/update/net/i;->j(Lcom/umeng/update/net/i;)Landroid/os/Messenger;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 172
    invoke-static {}, Lcom/umeng/update/net/i;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ServiceConnection.onServiceDisconnected"

    invoke-static {v0, v1}, Lu/a/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/umeng/update/net/j;->a:Lcom/umeng/update/net/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/update/net/i;->a(Lcom/umeng/update/net/i;Landroid/os/Messenger;)V

    .line 174
    return-void
.end method
