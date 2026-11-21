import { StrictMode } from 'react';
import { createRoot } from 'react-dom/client';
import { Provider } from 'react-redux';
import { MemoryRouter } from 'react-router-dom';
import { QueryClient, QueryClientProvider } from '@tanstack/react-query';
import { createHelexStore, HelexI18nBridge, setLocale } from '@helex/state';
import { HelexThemeProvider } from '@helex/ui';
import { App } from './App';
import './styles.css';

/*
 * What the HelexEMR renderer needs around it:
 *  - the Redux store from @helex/state (useLocalizedName reads `state.i18n.locale`),
 *  - HelexI18nBridge (provides the shared i18next instance and keeps it in sync with the store),
 *  - a react-query client (the terminology runtimes call useQuery even when unused),
 *  - a router context (AppLink / FillSession use react-router hooks) — a MemoryRouter, so it never
 *    touches the page URL, which this app manages itself (?q=…&r=…),
 *  - HelexThemeProvider (antd ConfigProvider + theme CSS variables + antd App context).
 */
const store = createHelexStore();
// All content in this IG is English; keep the UI chrome English too.
if (store.getState().i18n.locale !== 'en') store.dispatch(setLocale('en'));

const queryClient = new QueryClient({ defaultOptions: { queries: { retry: false, refetchOnWindowFocus: false } } });

createRoot(document.getElementById('root')!).render(
  <StrictMode>
    <Provider store={store}>
      <HelexI18nBridge>
        <QueryClientProvider client={queryClient}>
          <MemoryRouter>
            <HelexThemeProvider theme="helex" locale="en">
              <App />
            </HelexThemeProvider>
          </MemoryRouter>
        </QueryClientProvider>
      </HelexI18nBridge>
    </Provider>
  </StrictMode>,
);
