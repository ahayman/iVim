/* gui_ios.m */
char_u * gui_version_info(void);

char * istrcpy(char * dst, char * src);
void gui_mch_prepare(int *argc, char **argv);
int gui_mch_init_check(void);
int gui_mch_init(void);
void gui_mch_exit(int rc);
int gui_mch_open(void);
void gui_mch_update(void);
void gui_mch_flush(void);
int gui_mch_wait_for_chars(int wtime);
void gui_mch_clear_all(void);
void gui_mch_clear_block(int row1, int col1, int row2, int col2);
void gui_mch_draw_string(int row, int col, char_u *s, int len, int flags);
void gui_mch_delete_lines(int row, int num_lines);
void gui_mch_insert_lines(int row, int num_lines);
guicolor_T gui_mch_get_rgb_color(int r, int g, int b);
void gui_mch_set_fg_color(guicolor_T color);
void gui_mch_set_bg_color(guicolor_T color);
void gui_mch_set_sp_color(guicolor_T color);
void gui_mch_def_colors(void);
void gui_mch_new_colors(void);
void gui_mch_invert_rectangle(int r, int c, int nr, int nc);
void gui_mch_add_menu(vimmenu_T *menu, int idx);
void gui_mch_add_menu_item(vimmenu_T *menu, int idx);
void gui_mch_destroy_menu(vimmenu_T *menu);
void gui_mch_menu_grey(vimmenu_T *menu, int grey);
void gui_mch_menu_hidden(vimmenu_T *menu, int hidden);
void gui_mch_show_popupmenu(vimmenu_T *menu);
void gui_make_popup(char_u *path_name, int mouse_pos);
void gui_mch_draw_menubar(void);
void gui_mch_enable_menu(int flag);
void gui_mch_set_menu_pos(int x, int y, int w, int h);
void gui_mch_show_toolbar(int showit);
void gui_mch_free_font(GuiFont font);
GuiFont gui_mch_retain_font(GuiFont font);
GuiFont gui_mch_get_font(char_u *name, int giveErrorIfMissing);
char_u * gui_mch_get_fontname(GuiFont font, char_u *name);
int gui_mch_init_font(char_u *font_name, int fontset);
void gui_mch_set_font(GuiFont font);
void gui_mch_create_scrollbar(scrollbar_T *sb, int orient);
void gui_mch_destroy_scrollbar(scrollbar_T *sb);
void gui_mch_enable_scrollbar(scrollbar_T *sb, int flag);
void gui_mch_set_scrollbar_pos(scrollbar_T *sb, int x, int y, int w, int h);
void gui_mch_set_scrollbar_thumb(scrollbar_T *sb, long val, long size, long max);
void gui_mch_draw_hollow_cursor(guicolor_T color);
void gui_mch_draw_part_cursor(int w, int h, guicolor_T color);
void gui_mch_set_blinking(long wait, long on, long off);
void gui_mch_start_blink(void);
void gui_mch_stop_blink(int may_call_gui_update_cursor);
int gui_mch_is_blinking(void);
int gui_mch_is_blink_off(void);
void gui_mch_getmouse(int *x, int *y);
void gui_mch_setmouse(int x, int y);
void mch_set_mouse_shape(int shape);
void gui_mch_mousehide(int hide);
void clip_mch_request_selection(Clipboard_T *cbd);
void clip_mch_set_selection(Clipboard_T *cbd);
void clip_mch_lose_selection(Clipboard_T *cbd);
int clip_mch_own_selection(Clipboard_T *cbd);
void im_set_position(int row, int col);
void im_set_control(int enable);
void im_set_active(int active);
int im_get_status(void);
int gui_mch_adjust_charheight(void);
void gui_mch_beep(void);
char_u * gui_mch_browse(int saving, char_u *title, char_u *dflt, char_u *ext, char_u *initdir, char_u *filter);
int gui_mch_dialog(int type, char_u *title, char_u *message, char_u *buttons, int dfltbutton, char_u *textfield, int ex_cmd);
void gui_mch_flash(int msec);
guicolor_T gui_mch_get_color(char_u *name);
long_u gui_mch_get_rgb(guicolor_T pixel);
void gui_mch_get_screen_dimensions(int *screen_w, int *screen_h);
int gui_mch_haskey(char_u *name);
void gui_mch_iconify(void);
void gui_mch_set_foreground(void);
void gui_mch_set_shellsize(int width, int height, int min_width, int min_height, int base_width, int base_height, int direction);
void gui_mch_set_winpos(int x, int y);
int gui_mch_get_winpos(int *x, int *y);
void gui_mch_set_text_area_pos(int x, int y, int w, int h);
void gui_mch_settitle(char_u *title, char_u *icon);
void gui_mch_toggle_tearoffs(int enable);
void gui_mch_enter_fullscreen(int fuoptions_flags, guicolor_T bg);
void gui_mch_leave_fullscreen(void);
void gui_mch_fuopt_update(void);
void gui_mch_drawsign(int row, int col, int typenr);
void * gui_mch_register_sign(char_u *signfile);
void gui_mch_destroy_sign(void *sign);
BalloonEval * gui_mch_create_beval_area(void *target, char_u *mesg, void (*mesgCB)(BalloonEval *, int), void *clientData);
void gui_mch_enable_beval_area(BalloonEval *beval);
void gui_mch_disable_beval_area(BalloonEval *beval);
void gui_mch_post_balloon(BalloonEval *beval, char_u *mesg);

void ex_ios_cmds(exarg_T *eap);

void enumerate_bufs_with_corrected(void (^task)(buf_T *, char_u *, BOOL));
void ivim_append_shell_cmds_matching(char_u *pat, garray_T *matches);

// input method
int im_get_status(void);
void im_set_active(int active_arg);
void im_set_position(int row, int col);

// channel and job
int gui_ivim_has_channel(channel_T *channel, ch_part_T part);
void gui_ivim_add_channel(channel_T *channel, ch_part_T part);
void gui_ivim_remove_channel(channel_T *channel, ch_part_T part);

void scenes_keeper_stash(void);
// ios_term.m
void ios_term_run_cmd(char_u *cmd, int toshell_fd, int fromshell_fd);
void ios_term_readline(char_u *ta_buf, int len, int *got_int, pid_t pid, int *toshell_fd);
/* vim: set ft=c : */
